import 'package:ecommerceproject/controller/auth/signup_controller.dart';
import 'package:ecommerceproject/core/constant/color.dart';
import 'package:ecommerceproject/core/constant/imageasset.dart';
import 'package:ecommerceproject/core/functions/validinput.dart';
import 'package:ecommerceproject/view/widget/auth/custombuttonauth.dart';
import 'package:ecommerceproject/view/widget/auth/customtextbodyauth.dart';
import 'package:ecommerceproject/view/widget/auth/customtextformauth.dart';
import 'package:ecommerceproject/view/widget/auth/customtextsignup.dart';
import 'package:ecommerceproject/view/widget/auth/customtexttitleauth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    SignUpControllerImp controller=Get.put(SignUpControllerImp());
   // Get.lazyPut(()=>SignUpControllerImp());               //for deleta data from controller and we can comment this line and use lazyput at bindingfile
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColor.backgroundcolor,
        elevation: 0.0,
        centerTitle: true,
        title: Text(
          '17'.tr,
          style: Theme.of(context)
              .textTheme
              .headlineLarge!
              .copyWith(color: AppColor.grey),
        ),
      ),
      body: GetBuilder<SignUpControllerImp>(
          builder: (controller){
        return Container(
          padding: EdgeInsets.symmetric(vertical: 15, horizontal: 30),
          child: Form(
            key: controller.formstate,
            child: ListView(
              children: [
                CustomTextTitleAuth(text:'10'.tr ,),

                SizedBox(
                  height: 10,
                ),
                CustomTextBodyAuth(text:'24'.tr ),
                SizedBox(
                  height: 30,
                ),
                CustomTextFormAuth(
                  keyboardType: TextInputType.name,
                  mycontroller: controller.userName,
                  iconData: Icons.person_outline,
                  hinttext: '23'.tr,
                  labeltext: '20'.tr, valid: (val ) {
                  return validInput(val!, 10, 100, 'username');
                },
                  // mycontroller: emailu,
                ),

                CustomTextFormAuth(
                  keyboardType: TextInputType.emailAddress,
                  valid: (val){
                    return validInput(val!, 15, 100, 'email');
                  },
                  mycontroller: controller.email,
                  iconData: Icons.email_outlined,
                  hinttext: '12'.tr,
                  labeltext: '18'.tr,
                  // mycontroller: emailu,
                ),
                CustomTextFormAuth(
                  keyboardType: TextInputType.number,
                  valid: (val){
                    return validInput(val!, 4, 20, 'phone');
                  },
                  mycontroller: controller.phone,
                  iconData: Icons.phone_outlined,
                  hinttext: '22'.tr,
                  labeltext: '21'.tr,
                  // mycontroller: emailu,
                ),
                CustomTextFormAuth(
                    obscureText: true,
                    keyboardType: TextInputType.text,
                    valid: (val){
                      return validInput(val!, 5, 70, 'password');
                    },
                    mycontroller: controller.password,
                    iconData:Icons.lock_outline ,
                    hinttext:'13'.tr,
                    labeltext: '19'.tr),
                CustomButtonAuth(text: '17'.tr,onPressed: (){
                  controller.signUp();
                },),


                SizedBox(height: 30,),
                CustomTextSignUpOrSignIn(textone: '25'.tr, texttwo: '9'.tr, onTap: () {
                  controller.goToSignIn();
                },)
              ],
            ),
          ),
        );
      }),
    );
  }
}
