import 'package:flutter/material.dart';

class CustomTextFormAuth extends StatelessWidget {
  final IconData iconData;
  final String hinttext;
  final String labeltext;
  final TextEditingController? mycontroller;
  final String? Function(String?)? valid;
  final TextInputType? keyboardType;
  final bool? obscureText ;

  const CustomTextFormAuth({super.key, required this.iconData, required this.hinttext, required this.labeltext,  required this.mycontroller,required this.valid,required this.keyboardType,  this.obscureText,  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 25),
      child: TextFormField(
        obscureText: obscureText==null?false:true,
        keyboardType:keyboardType ,
        validator: valid,
        controller: mycontroller,
        decoration: InputDecoration(
          hintText: hinttext,
          hintStyle:TextStyle(fontSize: 14) ,
          contentPadding: EdgeInsets.symmetric(vertical: 5,horizontal: 30),
          label:Container(
              margin: EdgeInsets.symmetric(horizontal: 9),
              child: Text(labeltext)) ,
          floatingLabelBehavior:FloatingLabelBehavior.always ,
          suffixIcon: Icon(iconData),
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(30)
          ),

        ),
      ),
    );
  }
}
