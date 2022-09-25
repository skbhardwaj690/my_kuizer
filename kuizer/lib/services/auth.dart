import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

class AuthService {
  final FirebaseAuth auth = FirebaseAuth.instance;
  final user = FirebaseAuth.instance.currentUser;
  final userStream = FirebaseAuth.instance.authStateChanges();

  // Future<void> anonLogin() async {
  //   try {
  //     await FirebaseAuth.instance.signInAnonymously();
  //   } catch (e) {
  //     print(e.toString());
  //   }
  // }

  Future<void> signOut() async {
    try {
      await GoogleSignIn().signOut();
      await FirebaseAuth.instance.signOut();
    } catch (e) {
      print(e.toString());
    }
  }

  Future<User?> googleLogin() async {
    try {
      final GoogleSignIn googleSignIn = GoogleSignIn();
      final GoogleSignInAccount? googleuser = await googleSignIn.signIn();

      if (googleuser == null) {
        return null;
      } else {
        final GoogleSignInAuthentication googleSignInAuthentication =
            await googleuser.authentication;
        final AuthCredential authCredential = GoogleAuthProvider.credential(
            idToken: googleSignInAuthentication.idToken,
            accessToken: googleSignInAuthentication.accessToken);

        // Getting users credential
        UserCredential result = await auth.signInWithCredential(authCredential);

        User? user = result.user;
        return user;
      }
    } catch (e) {
      print(e.toString());
    }
  }
}
