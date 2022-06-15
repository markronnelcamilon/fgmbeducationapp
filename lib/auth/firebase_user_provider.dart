import 'package:firebase_auth/firebase_auth.dart';
import 'package:rxdart/rxdart.dart';

class FGMBEducationFirebaseUser {
  FGMBEducationFirebaseUser(this.user);
  User user;
  bool get loggedIn => user != null;
}

FGMBEducationFirebaseUser currentUser;
bool get loggedIn => currentUser?.loggedIn ?? false;
Stream<FGMBEducationFirebaseUser> fGMBEducationFirebaseUserStream() =>
    FirebaseAuth.instance
        .authStateChanges()
        .debounce((user) => user == null && !loggedIn
            ? TimerStream(true, const Duration(seconds: 1))
            : Stream.value(user))
        .map<FGMBEducationFirebaseUser>(
            (user) => currentUser = FGMBEducationFirebaseUser(user));
