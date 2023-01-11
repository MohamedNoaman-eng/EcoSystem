import 'package:firebase_auth/firebase_auth.dart';

import 'package:reviewapp/features/widgets/fluttertoast.dart';

class AuthService {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  // UserAccount _userFromFirebaseUser(UserCredential user) {
  //   return  UserAccount(uid: user.user!.uid);
  // }
  //
  // Stream<UserAccount> currentUSer() {
  //   return Stream.fromFuture(_auth.currentUser()).map(_userFromFirebaseUser);
  // }
  //
  // Stream<UserAccount> get user {
  //   return _auth.authStateChanges().map(user);
  // }

  // Future signInAnon() async {
  //   try {
  //     var result = await _auth.signInAnonymously();
  //     var user = result.user;
  //     return _userFromFirebaseUser(user);
  //   } catch (e) {
  //     print(e.toString());
  //     return null;
  //   }
  // }

  Future registerWithEmailAndPassword(String email, String password,context) async {
    try {
      await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      //BuildToast.showToast(text: "Successfully create your account", state: ToastState.Success, context: context);
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        BuildToast.showToast(text: "error ${e.message.toString()}", state: ToastState.Success, context: context);
      } else if (e.code == 'email-already-in-use') {
        BuildToast.showToast(text: "error ${e.message.toString}", state: ToastState.Success, context: context);      }
    } catch (e) {
      print(e);
    }
  }

  Future signInWithEmailAndPassword(String email, String password) async {
    try {
      final credential = await FirebaseAuth.instance.signInWithEmailAndPassword(
          email: email,
          password: password
      );
      //BuildToast.showToast(text: "Successfully sign in", state: ToastState.Success, context: context);

    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        print('No user found for that email.');
      } else if (e.code == 'wrong-password') {
        print('Wrong password provided for that user.');
      }
    }
  }

  Future signOut() async {
    try {
      await FirebaseAuth.instance.signOut();
      return true;
    } catch (e) {
      print(e.toString());
    }
  }

  // Future<String> getCurrentUser() async {
  //   FirebaseUser userData = await _auth.currentUser();
  //   String uid = userData.uid.toString();
  //   return uid;
  // }
}
