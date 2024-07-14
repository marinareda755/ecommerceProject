import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomButtonCart extends StatelessWidget {
  final String textButton;
  final void Function()? onPressed;

  const CustomButtonCart({
    Key? key,
    required this.textButton,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(horizontal: 100),
      child: MaterialButton(
        color: Colors.red,
        textColor: Colors.white,
        onPressed: onPressed,
        child: Text(
          textButton,
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}