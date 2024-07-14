import 'package:ecommerceproject/core/constant/routes.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';

abstract class VerfiyEmailSignUpController extends GetxController{
  checkCode();
  goToSuccesSignUp();
}
class VerfiyEmailSignUpControllerImp extends VerfiyEmailSignUpController{
  late String verifycode;
  final _auth = FirebaseAuth.instance;
  @override
  checkCode() {
    // TODO: implement verfiyCode
    throw UnimplementedError();
  }


  @override
  // goToSuccesSignUp() async {
  //   if(_auth.currentUser != null && _auth.currentUser!.emailVerified){
  //     Get.offNamed(AppRoute.successSignUp);
  //   }else{
  //     print('please active your account');
  //
  //   }
  //
  //
  //
  // }
  goToSuccesSignUp() async {


    if (_auth.currentUser != null && _auth.currentUser!.emailVerified) {
      Get.offNamed(AppRoute.successSignUp);
    } else {
      // The user has not yet verified their email, so display a message or handle the case accordingly
      print('Please verify your email address.');
    }
  }
  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
  }
}






// try {
//   final credential = await FirebaseAuth.instance;
//
//   if(credential.currentUser!.emailVerified){
//     Get.offNamed(AppRoute.successSignUp);
//   }else{
//     print('please active your account');
//
//   }
// } on FirebaseAuthException catch (e) {
//   if (e.code == 'user-not-found') {
//     print('===========No user found for that email.');
//
//   } else if (e.code == 'wrong-password') {
//     print(
//         '============Wrong password provided for that user.');
//
//   }
// }