import 'package:ecommerceproject/core/localization/changelocale.dart';
import 'package:ecommerceproject/view/widget/language/custombuttonlang.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../core/constant/routes.dart';

class LanguageSetting extends GetView<LocaleController> {
  const LanguageSetting({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Text('1'.tr,style:Theme.of(context).textTheme.headlineLarge ),
            SizedBox(height: 15,),
            CustomButtonLang(textbutton: 'Ar',onPressed: (){
              controller.changeLang('ar');
              Get.toNamed(AppRoute.homeScreen);

            },)
            ,
            CustomButtonLang(textbutton: 'En',onPressed: (){
              controller.changeLang('en');
              Get.toNamed(AppRoute.homeScreen);
            },),
          ],
        ),
      ),
    );
  }
}
