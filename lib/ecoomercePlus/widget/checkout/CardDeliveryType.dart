import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CardDeliveryType extends StatelessWidget {
  final bool active;
  final String imagename;
  final String title;
  const CardDeliveryType({super.key, required this.title, required this.active, required this.imagename});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      width: 120,
      decoration:

      BoxDecoration(
        color:active==true? Colors.red:null ,
          border: Border.all(color : Colors.red)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            imagename,
            width: 60,

          ),
          Text(
            title,
            style: TextStyle(
                color:active==true? Colors.white: Colors.red  ,
                fontWeight:active==true? FontWeight.bold: null ,
                fontSize: 16),
          )
        ],
      ),
    );
  }
}
