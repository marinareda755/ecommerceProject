import 'package:ecommerceproject/ecoomercePlus/data/models/ItemModel.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../ecoomercePlus/screen/auth/cart.dart';

class DetailsItem extends StatelessWidget {
  const DetailsItem({super.key, required Item item});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      bottomNavigationBar: Container(
          margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          height: 40,
          child: MaterialButton(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              color: Colors.red,
              onPressed: () {
                Get.to(Cart());
              },
              child: const Text(
                "Add To Cart",
                style: TextStyle(
                    color: Colors.white, fontWeight: FontWeight.bold),
              ))),


      backgroundColor: Colors.white,
      endDrawer: const Drawer(),
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.grey),
        title: const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(CupertinoIcons.shopping_cart),
            Text(
              ' Make',
              style: TextStyle(color: Colors.black),
            ),
            Text(
              ' Shopping',
              style: TextStyle(color: Colors.red),
            ),
          ],
        ),
        backgroundColor: Colors.grey[200],
        elevation: 0.0,
      ),

      body: ListView(
        children: [
          Image.asset('assets/images/profile.jpg'),
          SizedBox(height: 20,),
          Container(
              child: Text(
                'widget.data[title]',
                textAlign: TextAlign.center,
              )),
          Container(
              child: Text(
                'widget.data[subtitle]',
                textAlign: TextAlign.center,
              )),
          Container(
              child: Text(
                'widget.data[price]',
                textAlign: TextAlign.center,
              )),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Color:'),
              SizedBox(
                height: 10,width:10,
              ),
              Container(
                height: 30,
                width: 30,
                decoration: BoxDecoration(
                    color: Colors.grey[200],
                    borderRadius: BorderRadius.circular(30),
                    border: Border.all(color: Colors.orange)),
              ),
              SizedBox(width: 5,),
              Text('Gray'),
              SizedBox(
                height: 10,width: 5,
              ),
              Container(
                height: 30,
                width: 30,
                decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(30),
                    border: Border.all(color: Colors.black)),
              ),
              SizedBox(width: 5,),
              Text('Black'),
              SizedBox(
                height: 10,width: 5,
              ),
              Container(
                height: 30,
                width: 30,
                // decoration: BoxDecoration(
                //     color: Colors.black,
                //     borderRadius: BorderRadius.circular(30),
                //     border: Border.all(color: Colors.black)),
              )
            ],
          ),
            SizedBox(height: 30,),
    //         Container(
    //         width: double.infinity,
    //           padding: EdgeInsets.symmetric(horizontal: 100),
    //            child: MaterialButton(
    //                color: Colors.red,
    //                  textColor: Colors.white,
    //               onPressed: (){
    //                  Get.to(Cart());
    //               },
    //                  child: Text(
    // 'Add To Cart',
    //                   style: TextStyle(fontWeight: FontWeight.bold),
    //                         ),
    //
    //            )
    //         ),

  ] ),

    );
  }
}
