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

import 'package:ecommerceproject/core/constant/routes.dart';
import 'package:ecommerceproject/ecoomercePlus/screen/auth/HomeScreen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class LoginController extends GetxController {
  login();

  goToSignUp();

  goToForgetPassword();
}

class LoginControllerImp extends LoginController {
  GlobalKey<FormState> formstate = GlobalKey<FormState>();
  late TextEditingController email;
  late TextEditingController password;

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

        // Check if the user's email is verified
        if (credential.user!.emailVerified) {
          Get.offAll(HomeScreen());
         // Get.offNamed(AppRoute.home);
        } else {
          // If the email is not verified, show an error message
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
          print('Wrong password provided for that user.');
          Get.snackbar(
          'error' ,'e.code.toString()',
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
}
