import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustonItemList extends StatelessWidget {
  final String name;
  final String price;
  final String count;
  const CustonItemList({super.key, required this.name, required this.price, required this.count, });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(child: Row(
        children: [
          Expanded(
              flex:2,
              child: Image.asset('assets/images/profile.jpg',height: 90,fit: BoxFit.cover,)),
          Expanded(
              flex: 3,
              child: ListTile(
                title: Text(name,style: TextStyle(fontSize: 25),),
                subtitle: Text(price,style: TextStyle(color: Colors.red,fontSize: 15),),)
          ),
          Expanded(child: Column(
            children: [
              Container(height: 30
                  ,child: IconButton(onPressed: (){}, icon: Icon(Icons.add))),
              Container(
                  height: 30,
                  child: Text(count,)),
              Container(
                  height: 30,
                  child: IconButton(onPressed: (){}, icon: Icon(Icons.remove))),

            ],
          )),
        ],
      ),),
    );
  }
}
