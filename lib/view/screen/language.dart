// import 'package:ecommerceproject/core/constant/color.dart';
// import 'package:ecommerceproject/core/localization/changelocale.dart';
// import 'package:ecommerceproject/view/widget/language/custombuttonlang.dart';
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
//
// class Language extends StatelessWidget {
//   const Language({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     LocaleController controllerlang=Get.find();
//     return Scaffold(
//       body: Container(
//         padding: EdgeInsets.all(10),
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Text('1'.tr,style:Theme.of(context).textTheme.headlineLarge ),
//             SizedBox(height: 15,),
//             CustomButtonLang(textbutton: 'Ar',onPressed: (){
//               controllerlang.changeLang('ar');
//
//             },)
//            ,
//             CustomButtonLang(textbutton: 'En',onPressed: (){
//               controllerlang.changeLang('en');
//             },),
//           ],
//         ),
//       ),
//     );
//   }
// }





import 'package:ecommerceproject/core/constant/color.dart';
import 'package:ecommerceproject/core/constant/routes.dart';
import 'package:ecommerceproject/core/localization/changelocale.dart';
import 'package:ecommerceproject/view/screen/onboarding.dart';
import 'package:ecommerceproject/view/widget/language/custombuttonlang.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Language extends GetView<LocaleController> {
  const Language({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('1'.tr,style:Theme.of(context).textTheme.headlineLarge ),
            SizedBox(height: 15,),
            CustomButtonLang(textbutton: 'Ar',onPressed: (){
              controller.changeLang('ar');
              Get.toNamed(AppRoute.onBoarding);

            },)
            ,
            CustomButtonLang(textbutton: 'En',onPressed: (){
              controller.changeLang('en');
              Get.toNamed(AppRoute.onBoarding);
            },),
          ],
        ),
      ),
    );
  }
}
