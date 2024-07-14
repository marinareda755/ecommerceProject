// import 'package:ecommerceproject/core/constant/routes.dart';
// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:get/get.dart';
//
// abstract class SignUpController extends GetxController{
//   signUp();
//   goToSignIn();
//
//
// }
// class  SignUpControllerImp extends SignUpController{
//   late TextEditingController userName;
//   late TextEditingController email;
//   late TextEditingController phone;
//   late TextEditingController password;
//   GlobalKey<FormState>formstate=GlobalKey<FormState>();
//   @override
//   signUp() async {
//     var formdata=formstate.currentState;
//     if(formdata!.validate()){
//       try {
//         final credential = await FirebaseAuth.instance.createUserWithEmailAndPassword(
//           email: email.text,
//           password: password.text,
//         );
//         Get.offNamed(AppRoute.successSignUp);
//       } on FirebaseAuthException catch (e) {
//         if (e.code == 'weak-password') {
//           print('The password provided is too weak.');
//         } else if (e.code == 'email-already-in-use') {
//           print('The account already exists for that email.');
//         }
//       } catch (e) {
//         print(e);
//       }
//
//       // Get.delete<SignUpControllerImp>();                     //for delate data from controller we can replace it by lazyput
//       print('vaild');
//     }else{
//       print('not valid');
//     }
//
//
//   }
//   @override
//   goToSignIn() {
//    Get.offNamed(AppRoute.login);
//   }
//
//
//   @override
//   void onInit() {
//     userName=TextEditingController();
//     email=TextEditingController();
//     phone=TextEditingController();
//     password=TextEditingController();
//     super.onInit();
//   }
//
//
//
//
//
// }





// import 'package:ecommerceproject/core/constant/routes.dart';
// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:get/get.dart';
//
// abstract class SignUpController extends GetxController {
//   signUp();
//   goToSignIn();
//   goToVerifyEmailSignUp();
// }
//
// class SignUpControllerImp extends SignUpController {
//   late TextEditingController userName;
//   late TextEditingController email;
//   late TextEditingController phone;
//   late TextEditingController password;
//   GlobalKey<FormState> formstate = GlobalKey<FormState>();
//
//   @override
//   signUp() async {
//     var formdata = formstate.currentState;
//     if (formdata!.validate()) {
//       try {
//         final credential = await FirebaseAuth.instance.createUserWithEmailAndPassword(
//           email: email.text,
//           password: password.text,
//         );
//
//         await credential.user!.sendEmailVerification();
//         goToVerifyEmailSignUp();
//       } on FirebaseAuthException catch (e) {
//         if (e.code == 'weak-password') {
//           print('The password provided is too weak.');
//         } else if (e.code == 'email-already-in-use') {
//           print('The account already exists for that email.');
//         }
//       } catch (e) {
//         print(e);
//       }
//
//       // Get.delete<SignUpControllerImp>();                     //for delate data from controller we can replace it by lazyput
//       print('valid');
//     } else {
//       print('not valid');
//     }
//   }
//
//   @override
//   goToSignIn() {
//     Get.offNamed(AppRoute.login);
//   }
//
//   @override
//   goToVerifyEmailSignUp() {
//     Get.toNamed(AppRoute.verifyEmailSignUp);
//   }
//
//   @override
//   void onInit() {
//     userName = TextEditingController();
//     email = TextEditingController();
//     phone = TextEditingController();
//     password = TextEditingController();
//     super.onInit();
//   }
// }







// import 'package:ecommerceproject/core/constant/routes.dart';
// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:get/get.dart';
//
// abstract class SignUpController extends GetxController {
//   signUp();
//   goToSignIn();
//   goToVerifyEmailSignUp();
// }
//
// class SignUpControllerImp extends SignUpController {
//   late TextEditingController userName;
//   late TextEditingController email;
//   late TextEditingController phone;
//   late TextEditingController password;
//   GlobalKey<FormState> formstate = GlobalKey<FormState>();
//   final _auth = FirebaseAuth.instance;
//
//
//   @override
//   @override
//   signUp() async {
//     var formdata = formstate.currentState;
//     if (formdata!.validate()) {
//       try {
//         final credential = await FirebaseAuth.instance.createUserWithEmailAndPassword(
//           email: email.text,
//           password: password.text,
//         );
//         await credential.user!.sendEmailVerification();
//         await credential.user!.reload();
//
//         // Check if email is already verified
//         if (credential.user!.emailVerified) {
//           Get.offNamed(AppRoute.successSignUp);
//         } else {
//           // await credential.user!.sendEmailVerification();
//           goToVerifyEmailSignUp();
//         }
//       } on FirebaseAuthException catch (e) {
//         if (e.code == 'weak-password') {
//           print('The password provided is too weak.');
//         } else if (e.code == 'email-already-in-use') {
//           print('The account already exists for that email.');
//         }
//       } catch (e) {
//         print(e);
//       }
//
//       // Get.delete<SignUpControllerImp>();                     //for delate data from controller we can replace it by lazyput
//       print('valid');
//     } else {
//       print('not valid');
//     }
//   }
//
//   @override
//   goToSignIn() {
//     Get.offNamed(AppRoute.login);
//   }
//
//   @override
//   goToVerifyEmailSignUp() {
//     Get.toNamed(AppRoute.verifyEmailSignUp);
//   }
//
//   @override
//   void onInit() {
//     userName = TextEditingController();
//     email = TextEditingController();
//     phone = TextEditingController();
//     password = TextEditingController();
//     super.onInit();
//   }
// }












import 'package:ecommerceproject/core/constant/routes.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

abstract class SignUpController extends GetxController {
  signUp();
  goToSignIn();
  goToVerifyEmailSignUp();
}

class SignUpControllerImp extends SignUpController {
  late TextEditingController userName;
  late TextEditingController email;
  late TextEditingController phone;
  late TextEditingController password;
  GlobalKey<FormState> formstate = GlobalKey<FormState>();


  @override
  signUp() async {
    var formdata = formstate.currentState;
    if (formdata!.validate()) {
      try {
        final credential = await FirebaseAuth.instance.createUserWithEmailAndPassword(
          email: email.text,
          password: password.text,
        );

        await credential.user!.sendEmailVerification();

        await FirebaseAuth.instance.signOut();


        goToVerifyEmailSignUp();
      } on FirebaseAuthException catch (e) {
        if (e.code == 'weak-password') {
          print('The password provided is too weak.');
        } else if (e.code == 'email-already-in-use') {
          print('The account already exists for that email.');
        }
      } catch (e) {
        print(e);
      }
    } else {
      print('not valid');
    }
  }

  @override
  goToSignIn() {
    Get.offNamed(AppRoute.login);
  }

  @override
  goToVerifyEmailSignUp() {
    Get.toNamed(AppRoute.verifyEmailSignUp);
  }

  @override
  void onInit() {
    userName = TextEditingController();
    email = TextEditingController();
    phone = TextEditingController();
    password = TextEditingController();
    super.onInit();
  }
}













