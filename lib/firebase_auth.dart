import 'package:firebase_auth/firebase_auth.dart';

class AuthServ {
  static FirebaseAuth _auth = FirebaseAuth.instance;

  static Future<User?> signInAnon() async {
    try {
      UserCredential result = await _auth.signInAnonymously();
      User? fbUser = result.user;
      print("Login BerHasil");

      return fbUser!;
    } catch (e) {
      print("Gagal Login : ${e.toString()}");
      return null;
    }
  }

  static Future<void> signOut() async {
    try {
      _auth.signOut();
    } catch (e) {
      print("Gagal Log Out : ${e.toString()}");
    }
  }

  static Stream<User?> get fbUserSteam => _auth.authStateChanges();
}
