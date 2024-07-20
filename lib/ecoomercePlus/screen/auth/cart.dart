import 'package:ecommerceproject/controller/CartControl.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import '../../widget/Cart/AppbarCart.dart';
import '../../widget/Cart/CustomButtonNavigatio.dart';
import '../../widget/Cart/TopCardCart.dart';

class Cart extends StatelessWidget {
  Cart({super.key});

  // final CartControl cartController = Get.put(CartControl());

  @override
  Widget build(BuildContext context) {
    final controller_ = Get.put(CartControl());
    return GetBuilder<CartControl>(
        init: CartControl(),
        builder: (cartController) {
          return Scaffold(
            bottomNavigationBar: CustomButtonNavigation(
              price: '300\$',
              shopping: '200\$',
              totalprice: '500\$',
            ),
            body: ListView(
              children: [
                TopAppbar(title: '56'.tr),
                SizedBox(
                  height: 10,
                ),
                Obx(
                  () => TopCardCart(
                      massege:
                          'You Have ${cartController.itemCartControl.length} Item(s) In Your Cart'),
                ),
                Container(
                  padding: EdgeInsets.all(8),
                  child: ListView.builder(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    itemCount: cartController.itemCartControl.length,
                    itemBuilder: (context, index) {
                      // cartController.counts
                      //     .add(cartController.itemCartControl[index].count);
                      // cartController.update();
                      return Card(
                        child: Container(
                          child: Row(
                            children: [
                              Expanded(
                                  flex: 2,
                                  child: Image.network(
                                    cartController.itemCartControl[index].image,
                                    height: 90,
                                    fit: BoxFit.cover,
                                  )),
                              Expanded(
                                  flex: 3,
                                  child: ListTile(
                                    title: Text(
                                      cartController.itemCartControl[index].name,
                                      style: TextStyle(fontSize: 20),
                                    ),
                                    subtitle: Text(
                                      cartController.itemCartControl[index].price,
                                      style: TextStyle(
                                          color: Colors.red, fontSize: 15),
                                    ),
                                  )),
                              Expanded(
                                  child: Column(
                                children: [
                                  Container(
                                      height: 30,
                                      child: IconButton(
                                          onPressed: () {
                                            cartController.itemCartControl[index].count++;
                                            cartController.update();
                                            // cartController.increment(index);
                                          },
                                          icon: Icon(Icons.add))),
                                  Container(
                                    height: 30,
                                    child: Text(
                                        '${cartController.itemCartControl[index].count}')),

                                  Container(
                                      height: 30,
                                      child: IconButton(
                                          onPressed: () {
                                            cartController.itemCartControl[index].count--;
                                            cartController.update();
                                            // cartController.decrement(index);
                                          },
                                          icon: Icon(Icons.remove))),
                                ],
                              )),
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          );
        });
  }
}
