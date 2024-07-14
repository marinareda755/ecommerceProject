// import 'package:ecommerceproject/controller/auth/forgetpassword_controller.dart';
// import 'package:ecommerceproject/controller/auth/resetpassword_controller.dart';
// import 'package:ecommerceproject/core/constant/color.dart';
// import 'package:ecommerceproject/core/functions/validinput.dart';
// import 'package:ecommerceproject/view/widget/auth/custombuttonauth.dart';
// import 'package:ecommerceproject/view/widget/auth/customtextbodyauth.dart';
// import 'package:ecommerceproject/view/widget/auth/customtextformauth.dart';
// import 'package:ecommerceproject/view/widget/auth/customtexttitleauth.dart';
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
//
// class ResetPassword extends StatelessWidget {
//   const ResetPassword({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     ResetPasswordControllerImp controller=Get.put(ResetPasswordControllerImp());
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: AppColor.backgroundcolor,
//         elevation: 0.0,
//         centerTitle: true,
//         title: Text(
//           'Reset Password',
//           style: Theme.of(context)
//               .textTheme
//               .headlineLarge!
//               .copyWith(color: AppColor.grey),
//         ),
//       ),
//       body: Container(
//         padding: EdgeInsets.symmetric(vertical: 15, horizontal: 30),
//         child: Form(
//           key: controller.formstate,
//           child: ListView(
//             children: [
//               CustomTextTitleAuth(text:'New Password' ,),
//
//               SizedBox(
//                 height: 10,
//               ),
//               CustomTextBodyAuth(text:'Please Enter Your New Password  ' ),
//               SizedBox(
//                 height: 30,
//               ),
//
//               CustomTextFormAuth(
//                 obscureText: true,
//                 keyboardType: TextInputType.visiblePassword,
//                 valid: (val){
//                   return validInput(val!, 5, 70, 'password');
//                 },
//                 mycontroller: controller.password,
//                 iconData: Icons.lock_outline,
//                 hinttext: 'Enter Your New Password',
//                 labeltext: 'Password',
//               ),
//               CustomTextFormAuth(
//                 obscureText: true,
//                 keyboardType: TextInputType.visiblePassword,
//                 valid: (val){
//                   return validInput(val!, 5, 70, 'password');
//                 },
//                 mycontroller: controller.repassword,
//                 iconData: Icons.lock_outline,
//                 hinttext: 'ReEnter Your New Password',
//                 labeltext: 'Confirm Password',
//               ),
//
//               CustomButtonAuth(text: 'Save',onPressed: (){
//                 controller.goToSuccesResetPassword();
//               },),
//               SizedBox(height: 30,),
//
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }