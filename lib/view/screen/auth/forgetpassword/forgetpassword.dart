// import 'package:ecommerceproject/controller/auth/forgetpassword_controller.dart';
// import 'package:ecommerceproject/core/constant/color.dart';
// import 'package:ecommerceproject/core/functions/validinput.dart';
// import 'package:ecommerceproject/view/widget/auth/custombuttonauth.dart';
// import 'package:ecommerceproject/view/widget/auth/customtextbodyauth.dart';
// import 'package:ecommerceproject/view/widget/auth/customtextformauth.dart';
// import 'package:ecommerceproject/view/widget/auth/customtexttitleauth.dart';
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
//
// class ForgetPassword extends StatelessWidget {
//   const ForgetPassword({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     ForgetPasswordControllerImp controller=Get.put(ForgetPasswordControllerImp());
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: AppColor.backgroundcolor,
//         elevation: 0.0,
//         centerTitle: true,
//         title: Text(
//           'Forget Password',
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
//               CustomTextTitleAuth(text:'Check Email' ,),
//
//               SizedBox(
//                 height: 10,
//               ),
//               CustomTextBodyAuth(text:'Please Enter Your Email Address To Receive A Verification Code   ' ),
//               SizedBox(
//                 height: 30,
//               ),
//
//               CustomTextFormAuth(
//                 keyboardType: TextInputType.emailAddress,
//                 valid: (val){
//                   return validInput(val!, 5, 100, 'email');
//                 },
//                 mycontroller: controller.email,
//                 iconData: Icons.email_outlined,
//                 hinttext: 'Enter Your Email',
//                 labeltext: 'Email',
//               ),
//
//               CustomButtonAuth(text: 'Check',onPressed: (){
//
//                 controller.goToVerifyCode();
//
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