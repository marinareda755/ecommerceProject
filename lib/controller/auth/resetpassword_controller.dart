// import 'package:ecommerceproject/core/constant/routes.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:get/get.dart';
//
// abstract class ResetPasswordController extends GetxController{
//   resetPassword();
//   goToSuccesResetPassword();
// }
// class ResetPasswordControllerImp extends ResetPasswordController{
//   late TextEditingController password;
//   late TextEditingController repassword;
//   GlobalKey<FormState>formstate=GlobalKey<FormState>();
//   @override
//   resetPassword() {
//     // TODO: implement ResetPassword
//     throw UnimplementedError();
//   }
//
//   @override
//   goToSuccesResetPassword() {
//     var formdata=formstate.currentState;
//     if(formdata!.validate()){
//       Get.offNamed(AppRoute.successResetPassword);
//       print('vaild');
//     }else{
//       print('notvalid');
//     }
//
//   }
//   @override
//   void onInit() {
//     password=TextEditingController();
//     repassword=TextEditingController();
//     super.onInit();
//   }
//
// }