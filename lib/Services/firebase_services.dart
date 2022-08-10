import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import 'package:phoneauth/homeScreen.dart';
import 'package:phoneauth/Utils/snackbar.dart';
import'package:google_sign_in/google_sign_in.dart';
class FirebaseAuthMethods {
  final FirebaseAuth auth;
  FirebaseAuthMethods(this.auth);

  ///email sign up

  Future<void> signupWithEmail({
    required String email,
    required String password,
    required BuildContext context,
  }) async {
    print(email);
    print(password);
    try {
      await auth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
//await sendEmailVerification(context);
    } 
    on FirebaseAuthException catch (e) {
      showSnackBar(context, e.message!);
      print(e);
    }
  }
//email Verification(),
// Future<void>sendEmailVerification(BuildContext context)async{
//   try{
//     auth.currentUser!.sendEmailVerification();
//     showSnackBar(context, 'Email verificaion sent');
//   }on FirebaseAuthException catch(e){
//     showSnackBar(context, e.message!);

//   }

// }

// email sign in
  Future<void> emailSignIn({
    required String email,
    required BuildContext context,
    required String password,
  }) async {
    try {
      await auth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      // if(!auth.currentUser!.emailVerified){
      //   await sendEmailVerification(context);
      // }
    } on FirebaseAuthException catch (e) {
      showSnackBar(context, e.message!);
    }
    //auth.signInWithCredential(email,passWord,);
  }

//google sign in
Future<void> googleSignIn(BuildContext context)async{
  try{
    final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();
  final GoogleSignInAuthentication? googleAuth = await googleUser?.authentication;
  if(googleAuth?.accessToken != null && googleAuth?.idToken != null){
// create a new credential 
final credential = GoogleAuthProvider.credential(
  accessToken: googleAuth?.accessToken,
  idToken: googleAuth?.idToken,
);
UserCredential userCredential = await auth.signInWithCredential(credential);
  }


  }on FirebaseAuthException catch (e){
    showSnackBar(context, e.message!);
  }

}
// //OTP or phone verification

}
