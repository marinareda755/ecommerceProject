import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CartpaymentMethod extends StatelessWidget {
  final String title;
  final bool isActive;
  const CartpaymentMethod({super.key, required this.title, required this.isActive});

  @override
  Widget build(BuildContext context) {
    return   Container(
      margin: EdgeInsets.symmetric(
        horizontal: 10,
      ),
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      decoration: BoxDecoration(
           color:isActive == true? Colors.red[600]: Colors.red[50] ,
          borderRadius: BorderRadius.circular(20)),
      child: Text(
          title,
        style:
        TextStyle(color: isActive==true? Colors.white :Colors.red[600], fontWeight: FontWeight.bold),
      ),
    );
  }
}
