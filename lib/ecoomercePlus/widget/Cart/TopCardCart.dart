import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TopCardCart extends StatelessWidget {
  final String massege;
  const TopCardCart({super.key, required this.massege});

  @override
  Widget build(BuildContext context) {
    return   Container(
      margin: EdgeInsets.symmetric(horizontal: 20),
      padding: EdgeInsets.all(4),
      decoration: BoxDecoration(
          color: Colors.red[50],
          borderRadius: BorderRadius.circular(20)
      ),
      child: Text(massege,style: TextStyle(color: Colors.black,),textAlign: TextAlign.center,),
    );
  }
}
