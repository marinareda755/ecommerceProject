// import 'package:ecommerceproject/core/constant/routes.dart';
// import 'package:ecommerceproject/core/services/services.dart';
// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
//
// class MyMiddleWare extends GetMiddleware{
//   @override
//   int? get priority => 1;
//   MyServices myServices=Get.find();
//   final credential = FirebaseAuth.instance;
//
//   @override
//   RouteSettings? redirect(String ?route){
//     if(myServices.sharedPreferences.getString('onboarding')=='1') {
//       return RouteSettings(name: AppRoute.login);
//     }
//     if(myServices.sharedPreferences.getString('id')!=null){
//       return RouteSettings(name: AppRoute.homeScreen);
//     }else{
//       return RouteSettings(name: AppRoute.login);
//     }
//
//
//   }
//
// }





//
// import 'package:ecommerceproject/core/constant/routes.dart';
// import 'package:ecommerceproject/core/services/services.dart';
// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// class MyMiddleWare extends GetMiddleware {
//   @override
//   int? get priority => 1;
//
//   final myServices = Get.find<MyServices>();
//
//   @override
//   RouteSettings? redirect(String? route) {
//     if (myServices.sharedPreferences.getString('onboarding') == '1') {
//       return RouteSettings(name: AppRoute.login);
//     }
//     if (myServices.sharedPreferences.getString('step') == '2') {
//       return RouteSettings(name: AppRoute.homeScreen);
//     }
//     return null;
//   }
// }

import 'package:ecommerceproject/core/constant/routes.dart';
import 'package:ecommerceproject/core/services/services.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyMiddleWare extends GetMiddleware{
  @override
  int? get priority => 1;
  MyServices myServices=Get.find();
  final credential = FirebaseAuth.instance;

  @override
  RouteSettings? redirect(String? route) {
    if (myServices.sharedPreferences.getString("step") == "2") {
      return const RouteSettings(name: AppRoute.homeScreen);
    }
    if (myServices.sharedPreferences.getString("step") == "1") {
      return const RouteSettings(name: AppRoute.login);
    }

    return null;
  }

}
