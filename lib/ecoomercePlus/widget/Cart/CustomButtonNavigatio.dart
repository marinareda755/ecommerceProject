import 'package:ecommerceproject/ecoomercePlus/screen/auth/Checkout.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../screen/auth/Payment.dart';
import 'ButtonOrder.dart';

class CustomButtonNavigation extends StatelessWidget {
  final String price;
  final String shopping;
  final String totalprice;
  const CustomButtonNavigation({super.key, required this.price, required this.shopping, required this.totalprice});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Text('57'.tr,style: TextStyle(fontSize: 16,color: Colors.black87,fontWeight: FontWeight.bold),)),
              Container(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Text(price,style: TextStyle(fontSize: 16,color: Colors.red,fontWeight: FontWeight.bold),)),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Text('58'.tr,style: TextStyle(fontSize: 16,color: Colors.black87,fontWeight: FontWeight.bold),)),
              Container(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Text(shopping,style: TextStyle(fontSize: 16,color: Colors.red,fontWeight: FontWeight.bold),)),
            ],
          ),
          Padding(padding: EdgeInsets.symmetric(horizontal: 16),
            child: Divider(color: Colors.black,),

          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Text('59'.tr,style: TextStyle(fontSize: 16,color: Colors.black87,fontWeight: FontWeight.bold), )),
              Container(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Text(totalprice,style: TextStyle(fontSize: 16,color: Colors.red,fontWeight: FontWeight.bold),)),
            ],
          ),
          SizedBox(height: 10,),

          Padding(
            padding: const EdgeInsets.symmetric(vertical: 25),
            child: CustomButtonCart(
              textButton:'60'.tr ,
              onPressed: (){

                Get.to(CreditCardPage());
              },
            ),
          )
        ],
      ),
    );
  }
}

