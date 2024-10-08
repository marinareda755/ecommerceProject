import 'package:ecommerceproject/controller/auth/login_controller.dart';
import 'package:ecommerceproject/core/constant/color.dart';
import 'package:ecommerceproject/core/constant/imageasset.dart';
import 'package:ecommerceproject/core/functions/alertexitapp.dart';
import 'package:ecommerceproject/core/functions/validinput.dart';
import 'package:ecommerceproject/view/widget/auth/custombuttonauth.dart';
import 'package:ecommerceproject/view/widget/auth/customtextbodyauth.dart';
import 'package:ecommerceproject/view/widget/auth/customtextformauth.dart';
import 'package:ecommerceproject/view/widget/auth/customtextsignup.dart';
import 'package:ecommerceproject/view/widget/auth/customtexttitleauth.dart';
import 'package:ecommerceproject/view/widget/auth/logoauth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    LoginControllerImp controller = Get.put(LoginControllerImp());
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColor.backgroundcolor,
        elevation: 0.0,
        centerTitle: true,
        title: Text(

          '9'.tr,
          style: Theme.of(context)
              .textTheme
              .headlineLarge!
              .copyWith(color: AppColor.grey),
        ),
      ),
      body: WillPopScope(
          child: Container(
        padding: EdgeInsets.symmetric(vertical: 15, horizontal: 30),
        child: Form(
          key: controller.formstate,
          child: ListView(
            children: [
              LogoAuth(),
              CustomTextTitleAuth(
                text: '10'.tr,
              ),
              SizedBox(
                height: 10,
              ),
              CustomTextBodyAuth(
                  text:
                  '11'.tr),
              SizedBox(
                height: 30,
              ),
              CustomTextFormAuth(
                keyboardType: TextInputType.emailAddress,
                valid: (val){
                  return validInput(val!, 5, 100, 'email');
                },
                mycontroller: controller.email,
                iconData: Icons.email_outlined,
                hinttext: '12'.tr,
                labeltext: '18'.tr,
                // mycontroller: emailu,
              ),
              CustomTextFormAuth(
                obscureText: true,
                  keyboardType: TextInputType.text,
                  valid: (val){
                    return validInput(val!, 5, 70, 'password');
                  },
                  mycontroller: controller.password,
                  iconData: Icons.lock_outline,
                  hinttext: '13'.tr,
                  labeltext: '19'.tr),
              InkWell(
                onTap: (){
                  controller.goToForgetPassword();
                },
                child: Text(
                  '14'.tr,
                  textAlign: TextAlign.right,
                ),
              ),
              CustomButtonAuth(
                text: '15'.tr,
                onPressed: () {
                  controller.login();
                },
              ),
              SizedBox(height: 20,),
              MaterialButton(
                  height: 40,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50)),
                  color: Colors.red[700],
                  textColor: Colors.white,
                  onPressed: () {
                    controller.signInWithGoogle();
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('71'.tr),
                      Image.asset(
                        AppImageAsset.google,
                        width: 20,
                      )
                    ],
                  )),
              SizedBox(
                height: 30,
              ),
              CustomTextSignUpOrSignIn(
                textone: '16'.tr,
                texttwo: '17'.tr,
                onTap: () {
                  controller.goToSignUp();
                },
              ),

            ],
          ),
        ),
      ), onWillPop: alertExitApp),
    );
  }
}
