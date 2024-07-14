import 'package:ecommerceproject/controller/auth/sucesssignup_controller.dart';
import 'package:ecommerceproject/core/constant/color.dart';
import 'package:ecommerceproject/view/widget/auth/custombuttonauth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SuccessSignUp extends StatelessWidget {
  const SuccessSignUp({super.key});

  @override
  Widget build(BuildContext context) {
    SucessSignUpControllerImp controller=Get.put(SucessSignUpControllerImp());
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColor.backgroundcolor,
        elevation: 0.0,
        centerTitle: true,
        title: Text(
          'success',
          style: Theme.of(context)
              .textTheme
              .headlineLarge!
              .copyWith(color: AppColor.grey),
        ),
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        child: Column(

          children: [
            Center(child: Icon(Icons.check_circle_outline,size: 200,color: AppColor.primaryColor,)),
            Spacer(),
            Container(
              width: double.infinity,
              child: CustomButtonAuth(text: 'Go To Login',onPressed: (){
                controller.goToPageLogin();


              },),
            ),
            SizedBox(height: 30,)

          ],
        ),
      ),
    );
  }
}
