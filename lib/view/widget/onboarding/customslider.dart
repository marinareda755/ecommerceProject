import 'package:ecommerceproject/controller/onboarding_controller.dart';
import 'package:ecommerceproject/core/constant/color.dart';
import 'package:ecommerceproject/data/datasource/static/static.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomSliderOnBoarding extends GetView<OnBoardingControllerImp> {
  const CustomSliderOnBoarding({super.key});

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      controller:controller.pageController ,
      onPageChanged: (val){
        // print(val);
        controller.onPageChanged(val);
      },
        itemCount: onBoardingList.length,
        itemBuilder: (context, i) => Column(
          children: [
            // Text(
            //   onBoardingList[i].title!,
            //   // style: const TextStyle(
            //   //     fontWeight: FontWeight.bold, fontSize: 20),
            //   style: Theme.of(context).textTheme.headlineLarge,
            // ),
            // SizedBox(
            //   height: 60,
            // ),
            Image.asset(
              onBoardingList[i].image!,
              // width: 200,
              // height: 230,
              // fit: BoxFit.fill,
            ),
            SizedBox(
              height: 60,
            ),
        Text(
            onBoardingList[i].title!,
            // style: const TextStyle(
            //     fontWeight: FontWeight.bold, fontSize: 20),
            style: Theme.of(context).textTheme.headlineLarge,
          ),
            // SizedBox(
            //   height: 60,
            // ),

        SizedBox(
          height: 20,
        ),
            Container(
                width: double.infinity, //عشان اديه العرض كامل
                alignment: Alignment.center,
                child: Text(
                  onBoardingList[i].body!,
                  textAlign: TextAlign.center,
                  // style: TextStyle(
                  //     height: 2,
                  //     color: AppColor.grey,
                  //     fontWeight: FontWeight.bold,
                  //     fontSize: 15),
                  style: Theme.of(context).textTheme.bodyLarge,
                ))
          ],
        ));
  }
}

