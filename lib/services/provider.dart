import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:kiku/models/user_data.dart';

import 'firestore_database.dart';

final firebaseAuthProvider =
    Provider<FirebaseAuth>((ref) => FirebaseAuth.instance);

final authStateChangesProvider = StreamProvider<User?>(
    (ref) => ref.watch(firebaseAuthProvider).authStateChanges());

final databaseProvider = Provider<FirestoreDatabase?>((ref) {
  final auth = ref.watch(authStateChangesProvider);
  if (auth.value?.uid != null) {
    return FirestoreDatabase(uid: auth.value!.uid);
  }
  return null;
});

final userDataProvider = StreamProvider<UserData?>((ref) {
  final database = ref.watch(databaseProvider);
  if (database != null) {
    return database.streamUserData();
  }
  return const Stream<UserData>.empty();
});
