import 'package:ecommerceproject/core/constant/color.dart';
import 'package:flutter/material.dart';

class CustomButtonAuth extends StatelessWidget {
  final String text;
  final void Function()? onPressed;
  const CustomButtonAuth({super.key, required this.text, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 10),
      child: MaterialButton(
        shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)) ,
        padding: EdgeInsets.symmetric(vertical: 13),
        color: AppColor.primaryColor,
        onPressed: onPressed,
        child: Text(text),),
    );
  }
}
