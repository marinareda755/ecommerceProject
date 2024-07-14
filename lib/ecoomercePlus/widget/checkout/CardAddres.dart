import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CardAddres extends StatelessWidget {
  final String title;
  final String subtitle;
  final bool lisactive;

  const CardAddres({super.key, required this.title, required this.subtitle, required this.lisactive});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: lisactive==true? Colors.red: Colors.white,
      child: ListTile(
        title:Text(title) ,
        subtitle:Text(subtitle) ,
      ),
    );
  }
}
