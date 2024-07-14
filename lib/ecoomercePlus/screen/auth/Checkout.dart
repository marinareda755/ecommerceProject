
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../controller/CheckoutController.dart';
import '../../core/class/HandelingDataView.dart';
import '../../widget/checkout/CardAddres.dart';
import '../../widget/checkout/CardDeliveryType.dart';
import '../../widget/checkout/CartpaymentMethod.dart';


class Checkout extends StatelessWidget {
  const Checkout({super.key});

  @override
  Widget build(BuildContext context) {
    CheckoutController controller= Get.put(CheckoutController());
    return Scaffold(
      bottomNavigationBar: Container(
        width: double.infinity,
        padding: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
        child: MaterialButton(
          color: Colors.red,
          textColor: Colors.white,
          onPressed: (){},
          child: Text(
            'Checkout',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),

      ),
      appBar: AppBar(
        title: Row(
          children: [
            Icon(CupertinoIcons.back),

            Container(
              margin: EdgeInsets.all(80),
                child: Text(
              'Checkout',
              style: TextStyle(color: Colors.red, fontWeight: FontWeight.bold,),
            )),
          ],
        ),
      ),
      body: GetBuilder<CheckoutController>(builder: (controller) => HandlingDataView(statusRequest:controller.statusRequest,
          widget:Container(
            padding: EdgeInsets.all(20),
            child: ListView(
              children: [
                Text(
                  'Choose Payment Method',
                  style: TextStyle(
                      fontSize: 16, fontWeight: FontWeight.bold, color: Colors.red),
                ),
                InkWell(
                  onTap: (){
                    controller.ChoosePaymentMethod('Cash');
                  },
                  child: Container(
                      child: CartpaymentMethod(title: 'Cash On Delivery ', isActive:controller.paymentMethod=="cash"? true:false)),
                ),
                SizedBox(
                  height: 10,
                ),
                InkWell(
                    onTap: (){
                      controller.ChoosePaymentMethod('Card');
                    },
                    child: CartpaymentMethod(title: 'Payment Card ', isActive: controller.paymentMethod=="Payment Card"? true:false)),

                SizedBox(
                  height: 20,
                ),
                Text(
                  'Choose Delivery Type',
                  style: TextStyle(
                      fontSize: 16, fontWeight: FontWeight.bold, color: Colors.red),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    InkWell(
                      onTap: (){
                        controller.ChooseDelivartType('Delivery');
                      },
                        child: CardDeliveryType(title: 'Delivery', active: controller.delivaryType=='Delivery'? true:false, imagename: 'assets/Imagesdelivary.jpg')),
                    Spacer(),
                    InkWell(
                      onTap: (){
                        controller.ChooseDelivartType('Revice');                     },
                        child: CardDeliveryType(title: 'Deriver thru', active:controller.delivaryType=='Revice'? true:false, imagename: 'assets/Imagesderiverthru.jpg')),
                  ],
                ),
                SizedBox(height: 20,),
                if(controller.delivaryType=='Delivery')
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Choose Delivery Type',
                      style: TextStyle(
                          fontSize: 16, fontWeight: FontWeight.bold, color: Colors.red),
                    ),
                    SizedBox(height: 10,),
                    CardAddres(title: 'Home', subtitle: 'frial half tagned street 10', lisactive: true,),
                    CardAddres(title: 'Home', subtitle: 'frial half tagned street 10', lisactive: false,),


                  ],
                )
              ],
            ),
          ),) )
    );
  }
}
