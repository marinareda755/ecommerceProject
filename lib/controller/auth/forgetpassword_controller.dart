// import 'package:ecommerceproject/core/constant/routes.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:get/get.dart';
//
// abstract class ForgetPasswordController extends GetxController{
//   checkEmail();
//   goToVerifyCode();
//
// }
// class  ForgetPasswordControllerImp extends ForgetPasswordController{
//   late TextEditingController email;
//   GlobalKey<FormState>formstate=GlobalKey<FormState>();
//
//   @override
//   checkEmail() {
//
//
//   }
//
//   @override
//   goToVerifyCode() {
//     var formdata=formstate.currentState;
//     if(formdata!.validate()){
//       Get.offNamed(AppRoute.verfiyCode);
//       print('vaild');
//     }else{
//       print('notvalid');
//     }
//
//
//   }
//
//
//   @override
//   void onInit() {
//     email=TextEditingController();
//     super.onInit();
//   }
//
//
//
//
// }