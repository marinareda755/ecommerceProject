import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../../controller/CartControl.dart';

class CustonItemList extends StatelessWidget {
  final String name;
  final String price;
  final int index;
  final CartControl cartController;
   CustonItemList({super.key, required this.name, required this.price, required this.index, required this.cartController, });
  @override
  Widget build(BuildContext context) {
    final controller_ = Get.put(CartControl());
    return Card(
      child: Container(child: Row(
        children: [
          Expanded(
              flex:2,
              child: Image.network(controller_.itemCartControl[index].image,height: 90,fit: BoxFit.cover,)),
          Expanded(
              flex: 3,
              child: ListTile(
                title: Text(name,style: TextStyle(fontSize: 20),),
                subtitle: Text(price,style: TextStyle(color: Colors.red,fontSize: 15),),)
          ),
          Expanded(child: Column(
            children: [
              Container(height: 30
                  ,child: IconButton(onPressed: () => cartController.increment(index), icon: Icon(Icons.add))),
              Container(
                  height: 30,
                  child:
                   Obx(() =>
                      Text(
                      '${cartController.counts[index]}'
                  )),
           ),
              Container(
                  height: 30,
                  child: IconButton( onPressed: () => cartController.decrement(index), icon: Icon(Icons.remove))),

            ],
          )),
        ],
      ),),
    );
  }
}
