import 'package:ecommerceproject/controller/onboarding_controller.dart';
import 'package:ecommerceproject/core/constant/color.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomButtonOnBoarding extends GetView<OnBoardingControllerImp> {
  const CustomButtonOnBoarding({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      margin: EdgeInsets.only(bottom: 30),
      child: MaterialButton(
        color: AppColor.primaryColor,
        textColor: Colors.white,
        padding: EdgeInsets.symmetric(horizontal: 100),
        onPressed: (){
          controller.next();
        },
        child: Text('Continue',),),
    );
  }
}
