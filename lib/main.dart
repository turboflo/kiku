import 'package:firebase_auth/firebase_auth.dart' as auth;
import 'package:firebase_ui_auth/firebase_ui_auth.dart';
import 'package:flutter/material.dart';
import 'package:kiku/screens/home_screen.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

void main() async {
  await dotenv.load(fileName: ".env");
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const KikuApp());
}

class KikuApp extends StatelessWidget {
  const KikuApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final List<AuthProvider> providers = [EmailAuthProvider()];
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'kiku',
      theme: ThemeData(primarySwatch: Colors.purple),
      initialRoute:
          auth.FirebaseAuth.instance.currentUser == null ? '/sign-in' : '/home',
      routes: {
        '/sign-in': (context) {
          return SignInScreen(
            providers: providers,
            actions: [
              AuthStateChangeAction<SignedIn>((context, state) {
                Navigator.pushReplacementNamed(context, '/home');
              }),
            ],
          );
        },
        '/home': (context) {
          return const HomeScreen();
        },
        '/profile': (context) {
          return ProfileScreen(
            appBar: AppBar(title: const Text('Profile')),
            providers: providers,
            actions: [
              SignedOutAction((context) {
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
