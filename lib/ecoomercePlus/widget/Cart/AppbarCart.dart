import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TopAppbar extends StatelessWidget {
  final String title;
  const TopAppbar({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
        alignment: Alignment.center,
        child: Row(
          children: [
            Expanded(child: Container(alignment: Alignment.centerLeft,
                child: IconButton(onPressed: (){}, icon: Icon(Icons.arrow_back_rounded)))),
            Expanded(
              child: Container(
                alignment: Alignment.center,
                child: Text(
                  title,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25),),
              ),
            ),
            Spacer(),
          ],
        ));
  }
}
