import 'package:firebase_auth/firebase_auth.dart';
import 'package:rxdart/rxdart.dart';

class IdealFirebaseUser {
  IdealFirebaseUser(this.user);
  User? user;
  bool get loggedIn => user != null;
}

IdealFirebaseUser? currentUser;
bool get loggedIn => currentUser?.loggedIn ?? false;
Stream<IdealFirebaseUser> idealFirebaseUserStream() => FirebaseAuth.instance
    .authStateChanges()
    .debounce((user) => user == null && !loggedIn
        ? TimerStream(true, const Duration(seconds: 1))
        : Stream.value(user))
    .map<IdealFirebaseUser>((user) => currentUser = IdealFirebaseUser(user));
