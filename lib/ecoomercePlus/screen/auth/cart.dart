
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../widget/Cart/AppbarCart.dart';
import '../../widget/Cart/ButtonOrder.dart';
import '../../widget/Cart/CustomButtonNavigatio.dart';
import '../../widget/Cart/CustonItemList.dart';
import '../../widget/Cart/TopCardCart.dart';

class Cart extends StatelessWidget {

  const Cart({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CustomButtonNavigation(price: '300\$', shopping: '200\$', totalprice: '500\$',),
      body:ListView(

        children: [
          TopAppbar(title: 'My cart'),

          SizedBox(height: 10,),
      TopCardCart(massege: 'You Have 2 Item In Your Cart'),
          Container(
            padding: EdgeInsets.all(8),
            child: Column(children: [

              CustonItemList(name: 'MacBook', price: '00\$', count: '2')
            ],),
          ),


        ],
      ) ,
    );
  }
}
