import 'package:ecommerceproject/bindings/initialbindings.dart';
import 'package:ecommerceproject/core/constant/color.dart';
import 'package:ecommerceproject/core/localization/changelocale.dart';
import 'package:ecommerceproject/core/localization/translation.dart';
import 'package:ecommerceproject/core/services/services.dart';
import 'package:ecommerceproject/routes.dart';
import 'package:ecommerceproject/test.dart';
import 'package:ecommerceproject/test_view.dart';
import 'package:ecommerceproject/view/screen/language.dart';
import 'package:ecommerceproject/view/screen/onboarding.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await initialService();
  await Firebase.initializeApp(
      options:FirebaseOptions( apiKey: "AIzaSyDZ6SsfqnBFVtA-zhTQQ7WOI9jQsXabTc4",
          authDomain: "ecommerceapp-a0133.firebaseapp.com",
          projectId: "ecommerceapp-a0133",
          storageBucket: "ecommerceapp-a0133.appspot.com",
          messagingSenderId: "578256933252",
          appId: "1:578256933252:web:473ecf706e27cf7513cdd1",
          measurementId: "G-49C5NMLZE9")
  );

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});



  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    LocaleController controller=Get.put(LocaleController());
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'E_commerce',
      // locale: Get.deviceLocale,
      locale: controller.language,
      // initialBinding: InitialBindings(),
      // initialBinding: MyBinding(),

      translations: MyTranslation(),
      theme: ThemeData(
        fontFamily: 'PlayfairDisplay',

        textTheme: TextTheme(
          headlineLarge: TextStyle(
              fontWeight: FontWeight.bold, fontSize: 22,color: AppColor.black) ,
          headlineMedium:TextStyle(
              fontWeight: FontWeight.bold, fontSize: 26,color: AppColor.black) ,
          bodyLarge:TextStyle(
              height: 2,
              color: AppColor.grey,
              fontWeight: FontWeight.bold,
              fontSize: 15),
          bodyMedium: TextStyle(
              height: 2,
              color: AppColor.grey,
              fontSize: 14)

        )


        // colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        // useMaterial3: true,
      ),
      // home:const Language(),
      // routes:routes ,
      getPages: routes,

    );
  }
}


