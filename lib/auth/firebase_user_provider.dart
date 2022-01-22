import 'package:firebase_auth/firebase_auth.dart';
import 'package:rxdart/rxdart.dart';

class SplashLightKeyFirebaseUser {
  SplashLightKeyFirebaseUser(this.user);
  User user;
  bool get loggedIn => user != null;
}

SplashLightKeyFirebaseUser currentUser;
bool get loggedIn => currentUser?.loggedIn ?? false;
Stream<SplashLightKeyFirebaseUser> splashLightKeyFirebaseUserStream() =>
    FirebaseAuth.instance
        .authStateChanges()
        .debounce((user) => user == null && !loggedIn
            ? TimerStream(true, const Duration(seconds: 1))
            : Stream.value(user))
        .map<SplashLightKeyFirebaseUser>(
            (user) => currentUser = SplashLightKeyFirebaseUser(user));
