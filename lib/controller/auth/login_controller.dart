// import 'package:ecommerceproject/core/constant/routes.dart';
// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
//
// abstract class LoginController extends GetxController{
// login();
// goToSignUp();
// goToForgetPassword();
// }
// class LoginControllerImp extends LoginController{
//   GlobalKey<FormState>formstate=GlobalKey<FormState>();
//   late TextEditingController email;
//   late TextEditingController password;
//   @override
//   login() async {
//     var formdata=formstate.currentState;
//     if(formdata!.validate()){
//       try {
//         final credential = await FirebaseAuth.instance.signInWithEmailAndPassword(
//             email: email.text,
//             password: password.text
//         );
//         Get.offNamed(AppRoute.home);
//       } on FirebaseAuthException catch (e) {
//         if (e.code == 'user-not-found') {
//           print('No user found for that email.');
//         } else if (e.code == 'wrong-password') {
//           print('Wrong password provided for that user.');
//         }
//       }
//
//       print('vaild');
//     }else{
//       print('notvalid');
//     }
//   }
//
//
//   @override
//   goToSignUp() {
//     Get.offNamed(AppRoute.signUp);
//   }
//   @override
//   void onInit() {
//     email=TextEditingController();
//     password=TextEditingController();
//     super.onInit();
//   }
//
//   @override
//   goToForgetPassword() {
//     Get.offNamed(AppRoute.forgetPassword);
//
//   }
//
//
//
// }

// login() async {
//   var formdata = formstate.currentState;
//   if (formdata!.validate()) {
//     try {
//       final credential = await FirebaseAuth.instance.signInWithEmailAndPassword(
//         email: email.text,
//         password: password.text,
//       );
//       // The login was successful
//       print('Login successful');
//       Get.offNamed(AppRoute.home);
//     } on FirebaseAuthException catch (e) {
//       if (e.code == 'user-not-found') {
//         print('No user found for that email.');
//       } else if (e.code == 'wrong-password') {
//         print('Wrong password provided for that user.');
//       } else {
//         print('An error occurred during login: $e');
//       }
//     } catch (e) {
//       // Handle any other exceptions that might occur
//       print('An unexpected error occurred: $e');
//     }
//   } else {
//     print('not valid');
//   }
// }

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:ecommerceproject/core/constant/routes.dart';
import 'package:ecommerceproject/core/services/services.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_sign_in/google_sign_in.dart';

abstract class LoginController extends GetxController {
  login();

  goToSignUp();

  goToForgetPassword();
  signInWithGoogle();
}

class LoginControllerImp extends LoginController {
  GlobalKey<FormState> formstate = GlobalKey<FormState>();
  late TextEditingController email;
  late TextEditingController password;
  MyServices myServices=Get.find();
  final _firestore=FirebaseFirestore.instance;


  @override
  login() async {
    var formdata = formstate.currentState;
    if (formdata!.validate()) {
      try {
        final credential =
            await FirebaseAuth.instance.signInWithEmailAndPassword(
          email: email.text,
          password: password.text,
        );

        if (credential.user!.emailVerified) {
          await myServices.sharedPreferences.setString('id', credential.user!.uid);
          await myServices.sharedPreferences.setString('email', credential.user!.email.toString());
          myServices.sharedPreferences.setString('step', '2');
          print("================================"+credential.user!.uid);
          print("================================"+credential.user!.email.toString());
          setCurrentUser(credential.user!.uid,'');

          Get.offAllNamed(AppRoute.homeScreen);

        } else {
          Get.snackbar(
            'Email not verified',
            'Please verify your email before logging in.',
            snackPosition: SnackPosition.TOP,
            backgroundColor: Colors.red,
            colorText: Colors.white,
          );
        }
      } on FirebaseAuthException catch (e) {
        print('Wrong password provided for that user.'+e.code);

        if (e.code == 'user-not-found') {
          print('No user found for that email.');
          Get.snackbar(
            'No user found for that email.',
            'Please Enter Correct Email',
            snackPosition: SnackPosition.TOP,
            backgroundColor: Colors.red,
            colorText: Colors.white,
          );
        } else if (e.code == 'wrong-password') {
          print('Wrong password provided for that user.');
          Get.snackbar(
            'Wrong password provided for that user.',
            'Please Enter Correct Password',
            snackPosition: SnackPosition.TOP,
            backgroundColor: Colors.red,
            colorText: Colors.white,
          );
        }else  {
          Get.snackbar(
          'error' ,'Please Sign Up Before You Login',
            snackPosition: SnackPosition.TOP,
            backgroundColor: Colors.red,
            colorText: Colors.white,
          );
        }
      }

      print('valid');
    } else {
      print('not valid');
    }
  }

  @override
  goToSignUp() {
    Get.offNamed(AppRoute.signUp);
  }

  @override
  void onInit() {
    email = TextEditingController();
    password = TextEditingController();
    super.onInit();
  }

  @override
  goToForgetPassword() async {
    if (email.text == '') {
      Get.snackbar(
        'Error ',
        'please First Enter You Email then Press Forget Password ',
        snackPosition: SnackPosition.TOP,
        backgroundColor: Colors.red,
        colorText: Colors.white,
      );
    }
    try{
      await FirebaseAuth.instance.sendPasswordResetEmail(email: email.text);
      Get.snackbar(
        'We send a Link at your Email to Reset Your Password ',
        'Please Check it to Reset your password ',
        snackPosition: SnackPosition.TOP,
        backgroundColor: Colors.green,
        colorText: Colors.white,
      );

    }catch(e){
      Get.snackbar(
        'Error ',
        'Please Make sure of Email you Write ',
        snackPosition: SnackPosition.TOP,
        backgroundColor: Colors.red,
        colorText: Colors.white,
      );
      print(e.toString()+'errr');
    }

    Get.offNamed(AppRoute.login);
  }

  @override

  Future signInWithGoogle() async {
    // Trigger the authentication flow
    final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();
    if(googleUser==null){
      return;
    }

    // Obtain the auth details from the request
    final GoogleSignInAuthentication? googleAuth = await googleUser?.authentication;

    // Create a new credential
    final credential = GoogleAuthProvider.credential(
      accessToken: googleAuth?.accessToken,
      idToken: googleAuth?.idToken,
    );

    // Once signed in, return the UserCredential
    await FirebaseAuth.instance.signInWithCredential(credential);
    final user = FirebaseAuth.instance.currentUser;
    if (user != null){
      await myServices.sharedPreferences.setString('email', user!.email.toString());
      await myServices.sharedPreferences.setString('id', user.uid);
      myServices.sharedPreferences.setString('step', '2');
      setCurrentUser(user.uid,user.photoURL,);

      print("================================"+user!.email.toString());
    }
      // Get.offNamed(AppRoute.homeScreen);
    Get.offAllNamed(AppRoute.homeScreen);

  }

  Future<void> setCurrentUser(String uid,image) async {
    print('errortrr');

    try{
     QuerySnapshot query = await _firestore.collection('user').where('uid', isEqualTo: uid).get();
     if(query.size > 0){
       print(query.size.toString()+'size');
       myServices.sharedPreferences.setString('profileImageUrl', query.docs[0].get('image'));

     }else{

       _firestore.collection('user').add({
         'email':email.text,
         'image':image ==''?'':image,
         'uid':uid,
       });
     }

    }catch(e){
    }

    print('errortrr'+{
      'email':email.text,
      'image':'',
      'uid':uid,
    }.toString());
  }
}










// import 'package:ecommerceproject/core/constant/routes.dart';
// import 'package:ecommerceproject/core/services/services.dart';
// import 'package:ecommerceproject/ecoomercePlus/screen/auth/Home.dart';
// import 'package:ecommerceproject/ecoomercePlus/screen/auth/HomeScreen.dart';
// import 'package:ecommerceproject/view/screen/HomeScreen.dart';
// import 'package:ecommerceproject/view/screen/home.dart';
// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
//
// abstract class LoginController extends GetxController {
//   login();
//
//   goToSignUp();
//
//   goToForgetPassword();
// }
//
// class LoginControllerImp extends LoginController {
//   GlobalKey<FormState> formstate = GlobalKey<FormState>();
//   late TextEditingController email;
//   late TextEditingController password;
//   MyServices myServices=MyServices();
//
//   @override
//   login() async {
//     var formdata = formstate.currentState;
//     if (formdata!.validate()) {
//       try {
//         final credential =
//         await FirebaseAuth.instance.signInWithEmailAndPassword(
//           email: email.text,
//           password: password.text,
//         );
//
//         // Check if the user's email is verified
//         if (credential.user!.emailVerified) {
//           await myServices.sharedPreferences.setString('id', credential.user!.uid);
//           myServices.sharedPreferences.setString('step', '2');
//           print(credential.user!.uid);
//
//           Get.offAll(HomeScreen());
//           // Get.offNamed(AppRoute.home);
//         } else {
//           // If the email is not verified, show an error message
//           Get.snackbar(
//             'Email not verified',
//             'Please verify your email before logging in.',
//             snackPosition: SnackPosition.TOP,
//             backgroundColor: Colors.red,
//             colorText: Colors.white,
//           );
//         }
//       } catch (e) {
//         if (e is FirebaseAuthException) {
//           if (e.code == 'user-not-found') {
//             // Handle 'user-not-found' error
//           } else if (e.code == 'wrong-password') {
//             // Handle 'wrong-password' error
//           } else {
//             // Handle other FirebaseAuthException errors
//             Get.snackbar(
//               'Error',
//               e.message ?? 'An unknown error occurred.',
//               snackPosition: SnackPosition.TOP,
//               backgroundColor: Colors.red,
//               colorText: Colors.white,
//             );
//           }
//         } else {
//           // Handle other types of exceptions
//           Get.snackbar(
//             'Error',
//             'An unknown error occurred.',
//             snackPosition: SnackPosition.TOP,
//             backgroundColor: Colors.red,
//             colorText: Colors.white,
//           );
//         }
//       }
//
//       print('valid');
//     } else {
//       print('not valid');
//     }
//   }
//
//   @override
//   goToSignUp() {
//     Get.offNamed(AppRoute.signUp);
//   }
//
//   @override
//   void onInit() {
//     email = TextEditingController();
//     password = TextEditingController();
//     super.onInit();
//   }
//
//   @override
//   goToForgetPassword() async {
//     if (email.text == '') {
//       Get.snackbar(
//         'Error ',
//         'please First Enter You Email then Press Forget Password ',
//         snackPosition: SnackPosition.TOP,
//         backgroundColor: Colors.red,
//         colorText: Colors.white,
//       );
//     }
//     try{
//       await FirebaseAuth.instance.sendPasswordResetEmail(email: email.text);
//       Get.snackbar(
//         'We send a Link at your Email to Reset Your Password ',
//         'Please Check it to Reset your password ',
//         snackPosition: SnackPosition.TOP,
//         backgroundColor: Colors.green,
//         colorText: Colors.white,
//       );
//
//     }catch(e){
//       Get.snackbar(
//         'Error ',
//         'Please Make sure of Email you Write ',
//         snackPosition: SnackPosition.TOP,
//         backgroundColor: Colors.red,
//         colorText: Colors.white,
//       );
//       print(e.toString()+'errr');
//     }
//
//     Get.offNamed(AppRoute.login);
//   }
// }
