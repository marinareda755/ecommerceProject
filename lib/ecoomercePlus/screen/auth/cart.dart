import 'package:ecommerceproject/controller/CartControl.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../data/models/CartModel.dart';
import '../../widget/Cart/AppbarCart.dart';
import '../../widget/Cart/ButtonOrder.dart';
import '../../widget/Cart/CustomButtonNavigatio.dart';
import '../../widget/Cart/CustonItemList.dart';
import '../../widget/Cart/TopCardCart.dart';

class Cart extends StatelessWidget {
  Cart({super.key});

  final CartControl cartController = Get.put(CartControl());

  @override
  Widget build(BuildContext context) {
    final controller_ = Get.put(CartControl());
    return Scaffold(
      bottomNavigationBar: CustomButtonNavigation(
        price: '300\$',
        shopping: '200\$',
        totalprice: '500\$',
      ),
      body: ListView(
        children: [
          TopAppbar(title: 'My cart'),
          SizedBox(
            height: 10,
          ),
      Obx(() =>TopCardCart(massege: 'You Have ${cartController.itemCartControl.length} Item(s) In Your Cart'),),
          Container(
            padding: EdgeInsets.all(8),
            child: ListView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount:  controller_.itemCartControl .length,
              itemBuilder: (context, index) {
                // final item = cartController.filteredItems[index];
                return CustonItemList(
                  name: controller_.itemCartControl[index].name,
                  price: controller_.itemCartControl[index].price,
                  index: index,
                  cartController: cartController,
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
