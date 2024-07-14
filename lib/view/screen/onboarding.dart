import 'package:ecommerceproject/controller/onboarding_controller.dart';
import 'package:ecommerceproject/core/constant/color.dart';
import 'package:ecommerceproject/data/datasource/static/static.dart';
import 'package:ecommerceproject/data/model/onboardingmodel.dart';
import 'package:ecommerceproject/view/widget/onboarding/custombutton.dart';
import 'package:ecommerceproject/view/widget/onboarding/customslider.dart';
import 'package:ecommerceproject/view/widget/onboarding/dotscontainer.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OnBoarding extends StatelessWidget {
  const OnBoarding({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(OnBoardingControllerImp());
    return Scaffold(
        backgroundColor: AppColor.backgroundcolor,
        body: SafeArea(
          child: Container(
            padding: const EdgeInsets.all(10),
            child: Column(
              children: [
                Expanded(
                  flex: 5,
                  child: CustomSliderOnBoarding(),
                ),
                Expanded(
                    flex: 1,
                    child: Column(
                      children: [
                        CustomDotContainerOnBoarding(),
                        Spacer(flex: 2,),
                        CustomButtonOnBoarding()

                      ],
                    ))
              ],
            ),
          ),
        ));
  }
}
