import 'package:ecommerceproject/controller/auth/forgetpassword_controller.dart';
import 'package:ecommerceproject/controller/auth/signup_controller.dart';
import 'package:ecommerceproject/controller/auth/verfiycode_controller.dart';
import 'package:ecommerceproject/controller/auth/verifyemailsignup_controller.dart';
import 'package:ecommerceproject/core/constant/color.dart';
import 'package:ecommerceproject/view/widget/auth/custombuttonauth.dart';
import 'package:ecommerceproject/view/widget/auth/customtextbodyauth.dart';
import 'package:ecommerceproject/view/widget/auth/customtextformauth.dart';
import 'package:ecommerceproject/view/widget/auth/customtextsignup.dart';
import 'package:ecommerceproject/view/widget/auth/customtexttitleauth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:get/get.dart';

import '../../../core/constant/routes.dart';

class  VerfiyEmailSignUp extends StatelessWidget {
  const  VerfiyEmailSignUp({super.key});

  @override
  Widget build(BuildContext context) {
    VerfiyEmailSignUpControllerImp controller=Get.put(VerfiyEmailSignUpControllerImp());
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColor.backgroundcolor,
        elevation: 0.0,
        centerTitle: true,
        title: Text(
          '73'.tr,
          style: Theme.of(context)
              .textTheme
              .headlineLarge!
              .copyWith(color: AppColor.grey),
        ),
      ),
      body: Container(
        padding: EdgeInsets.symmetric(vertical: 15, horizontal: 30),
        child: ListView(
          children: [
            CustomTextTitleAuth(text:'74'.tr,),

            SizedBox(
              height: 10,
            ),
            CustomTextBodyAuth(text:'75'.tr, ),
            SizedBox(
              height: 30,
            ),
            CustomButtonAuth(text: '8'.tr,onPressed: (){
              // controller.goToSuccesSignUp();
              Get.offNamed(AppRoute.login);

            },),

            // OtpTextField(
            //   fieldWidth: 50,
            //   borderRadius: BorderRadius.circular(20),
            //   numberOfFields: 5,
            //   borderColor: Color(0xFF512DA8),
            //   //set to true to show as box or false to show as dash
            //   showFieldAsBox: true,
            //   //runs when a code is typed in
            //   onCodeChanged: (String code) {
            //     //handle validation or checks here
            //   },
            //   //runs when every textfield is filled
            //   onSubmit: (String verificationCode){
            //
            //     showDialog(
            //         context: context,
            //         builder: (context){
            //           return AlertDialog(
            //             title: Text("Verification Code"),
            //             content: Text('Code entered is $verificationCode'),
            //           );
            //         }
            //     );
            //
            //     controller.goToSuccesSignUp();
            //   }, // end onSubmit
            // ),

            SizedBox(height: 30,),

          ],
        ),
      ),
    );
  }
}