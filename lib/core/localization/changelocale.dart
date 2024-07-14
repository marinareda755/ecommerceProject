

import 'package:ecommerceproject/core/constant/apptheme.dart';
import 'package:ecommerceproject/core/services/services.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LocaleController extends GetxController{
 Locale ?language;
 MyServices myServices=Get.find();
 // ThemeData appTheme=themeEnglish;

 changeLang(String langcode){
   Locale locale=Locale(langcode);
   myServices.sharedPreferences.setString('lang', langcode);
   // appTheme=langcode=='ar'?themeArabic:themeEnglish;
   // Get.changeTheme(appTheme);
   Get.updateLocale(locale);

 }
 @override
  void onInit() {
    String ? sharedPrefLang=myServices.sharedPreferences.getString('lang');
    if(sharedPrefLang=='ar'){
      language=Locale('ar');
    }else if (sharedPrefLang=='en'){
      language=Locale('en');
    }else{
      language=Locale(Get.deviceLocale!.languageCode);
    }
    super.onInit();
  }
}