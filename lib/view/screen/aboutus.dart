import 'package:ecommerceproject/core/constant/color.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AboutUs extends StatefulWidget {
  const AboutUs({super.key});

  @override
  State<AboutUs> createState() => _AboutUsState();
}

class _AboutUsState extends State<AboutUs> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('42'.tr),),
      body: Container(
        padding: EdgeInsets.all(20),
        // alignment: Alignment.center,

        height: 300,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: AppColor.primaryColor,
        ),
        child: Text('64'.tr,style: TextStyle(color: Colors.white),),
      ),
    );
  }
}
