import 'package:ecommerceproject/controller/onboarding_controller.dart';
import 'package:ecommerceproject/core/constant/color.dart';
import 'package:ecommerceproject/data/datasource/static/static.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomDotContainerOnBoarding extends StatelessWidget {
  const CustomDotContainerOnBoarding({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<OnBoardingControllerImp>(
      init: OnBoardingControllerImp(),
        builder: (controller){
      return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ...List.generate(
              onBoardingList.length,
                  (index) => AnimatedContainer(
                margin: EdgeInsets.only(right: 5),
                duration: Duration(milliseconds: 900),
                width: controller.currentPage==index?20:6,
                height: 6,
                decoration: BoxDecoration(
                    color: AppColor.primaryColor,
                    borderRadius: BorderRadius.circular(10)

                ),

              ))
        ],
      );
    });
  }
}
