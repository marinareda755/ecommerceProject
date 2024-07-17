import 'package:ecommerceproject/core/constant/routes.dart';
import 'package:ecommerceproject/core/middleware/mymiddleware.dart';
import 'package:ecommerceproject/ecoomercePlus/screen/auth/Home.dart';
import 'package:ecommerceproject/ecoomercePlus/screen/auth/Setting.dart';
import 'package:ecommerceproject/view/screen/HomeScreen.dart';
import 'package:ecommerceproject/view/screen/auth/forgetpassword/forgetpassword.dart';
import 'package:ecommerceproject/view/screen/auth/login.dart';
import 'package:ecommerceproject/view/screen/auth/forgetpassword/resetpassword.dart';
import 'package:ecommerceproject/view/screen/auth/signup.dart';
import 'package:ecommerceproject/view/screen/auth/forgetpassword/success_resetpassword.dart';
import 'package:ecommerceproject/view/screen/auth/success_signup.dart';
import 'package:ecommerceproject/view/screen/auth/forgetpassword/verfiycode.dart';
import 'package:ecommerceproject/view/screen/auth/verifyemailsignup.dart';
import 'package:ecommerceproject/view/screen/home.dart';
import 'package:ecommerceproject/view/screen/language.dart';
import 'package:ecommerceproject/view/screen/onboarding.dart';
import 'package:ecommerceproject/view/screen/profile.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/src/routes/get_transition_mixin.dart';
import 'package:path/path.dart';

import 'ecoomercePlus/screen/auth/cart.dart';

List<GetPage<dynamic>>? routes=[
  GetPage(name:'/', page: ()=>Language(),middlewares: [MyMiddleWare()]),
  GetPage(name: AppRoute.login, page: ()=>Login()),
  GetPage(name: AppRoute.signUp, page: ()=>SignUp()),
  // GetPage(name: AppRoute.forgetPassword, page: ()=>ForgetPassword()),
  // GetPage(name: AppRoute.verfiyCode, page: ()=>VerfiyCode()),
  // GetPage(name: AppRoute.resetPassword, page: ()=>ResetPassword()),
  // GetPage(name: AppRoute.successResetPassword, page: ()=>SuccessResetPassword()),
  GetPage(name: AppRoute.successSignUp, page: ()=>SuccessSignUp()),
  GetPage(name: AppRoute.verifyEmailSignUp, page: ()=>VerfiyEmailSignUp()),
  GetPage(name: AppRoute.onBoarding, page: ()=>OnBoarding()),
  // GetPage(name: AppRoute.home, page: ()=>Home()),
  GetPage(name: AppRoute.cart, page: ()=>Cart()),
  GetPage(name: AppRoute.profile, page: ()=>Profile()),
  GetPage(name: AppRoute.homeScreen, page: ()=>HomeScreen()),
  GetPage(name: AppRoute.setting, page: ()=>Setting()),
  GetPage(name: AppRoute.homePage, page: ()=>HomePage()),
];




//flutter withoutgetx

// Map<String, Widget Function(BuildContext)> routess={
//   AppRoute.onBoarding:(context)=>OnBoarding(),
//
//   AppRoute.login:(context)=>Login(),
//   AppRoute.signUp:(context)=>SignUp(),
//   AppRoute.forgetPassword:(context)=>ForgetPassword(),
//   AppRoute.verfiyCode:(context)=>VerfiyCode(),
//   AppRoute.resetPassword:(context)=>ResetPassword(),
//   AppRoute.successResetPassword:(context)=>SuccessResetPassword(),
//   AppRoute.successSignUp:(context)=>SuccessSignUp(),
//   AppRoute.verifyEmailSignUp:(context)=>VerfiyEmailSignUp(),
//   AppRoute.home:(context)=>Home(),
// };