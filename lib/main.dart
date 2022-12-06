import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_ui_auth/firebase_ui_auth.dart' as auth_ui;
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:kiku/screens/home_screen.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';
import 'services/firestore_database.dart';

void main() async {
  await dotenv.load(fileName: ".env");
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(
    const ProviderScope(
      child: KikuApp(),
    ),
  );
}

class KikuApp extends ConsumerWidget {
  const KikuApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final List<auth_ui.AuthProvider> providers = [auth_ui.EmailAuthProvider()];
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'kiku',
      theme: ThemeData(primarySwatch: Colors.purple),
      initialRoute:
          FirebaseAuth.instance.currentUser == null ? '/sign-in' : '/home',
      routes: {
        '/sign-in': (context) {
          return auth_ui.SignInScreen(
            providers: providers,
            actions: [
              auth_ui.AuthStateChangeAction<auth_ui.SignedIn>((context, state) {
                FirestoreDatabase(uid: FirebaseAuth.instance.currentUser!.uid)
                    .setInitialUserData();
                Navigator.pushReplacementNamed(context, '/home');
              }),
            ],
          );
        },
        '/home': (context) {
          return const HomeScreen();
        },
        '/profile': (context) {
          return auth_ui.ProfileScreen(
            appBar: AppBar(title: const Text('Profile')),
            providers: providers,
            actions: [
              auth_ui.SignedOutAction((context) {
                Navigator.popUntil(context, ModalRoute.withName('/home'));
                Navigator.pushReplacementNamed(context, '/sign-in');
              }),
            ],
          );
        }
      },
    );
  }
}
