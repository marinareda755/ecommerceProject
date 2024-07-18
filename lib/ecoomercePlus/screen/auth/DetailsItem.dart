import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../../data/models/ItemModel.dart';
import 'cart.dart';



class DetailsItem extends StatelessWidget {
  final Item item;

   DetailsItem({super.key, required this.item, });
  late SharedPreferences sharedPreferences;
  late  String mail;
  void getShared() async{
    sharedPreferences= await SharedPreferences.getInstance();
    mail=sharedPreferences.getString('email').toString();
    print("object"+mail.toString());
  }
  @override
  Widget build(BuildContext context) {



    final _firestore = FirebaseFirestore.instance;


    return Scaffold(
      bottomNavigationBar: Container(
        margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        height: 40,
        child: MaterialButton(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          color: Colors.red,
          onPressed: () {
            getShared();
            _firestore.collection('addToCard').add({
              'name': item.name,
              'user': mail,
              'image': item.image,
              'price': item.price,

            });
            Get.to(Cart());
          },
          child: const Text(
            "Add To Cart",
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
      backgroundColor: Colors.white,
      endDrawer: const Drawer(),
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.grey),
        title: const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(CupertinoIcons.shopping_cart),
            Text(
              ' Make',
              style: TextStyle(color: Colors.black),
            ),
            Text(
              ' Shopping',
              style: TextStyle(color: Colors.red),
            ),
          ],
        ),
        backgroundColor: Colors.grey[200],
        elevation: 0.0,
      ),
      body: ListView(
          children: [
            Image.network(item.image),
            SizedBox(height: 20),
            Container(
              child: Text(
                item.name,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Container(
              child: Text(
                item.categories,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey,
                ),
              ),
            ),
            Container(
              child: Text(
                '\$${item.price}',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.red,
                ),
              ),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Color:'),
                SizedBox(width: 10),
                Container(
                  height: 30,
                  width: 30,
                  decoration: BoxDecoration(
                    color: Colors.grey[200],
                    borderRadius: BorderRadius.circular(30),
                    border: Border.all(color: Colors.orange),
                  ),
                ),
                SizedBox(width: 5),
                Text('Gray'),
                SizedBox(width: 5),
                Container(
                  height: 30,
                  width: 30,
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(30),
                    border: Border.all(color: Colors.black),
                  ),
                ),
                SizedBox(width: 5),
                Text('Black'),
              ],
            ),
            SizedBox(height: 30),
    //         Container(
    //         width: double.infinity,
    //           padding: EdgeInsets.symmetric(horizontal: 100),
    //            child: MaterialButton(
    //                color: Colors.red,
    //                  textColor: Colors.white,
    //               onPressed: (){
    //                  Get.to(Cart());
    //               },
    //                  child: Text(
    // 'Add To Cart',
    //                   style: TextStyle(fontWeight: FontWeight.bold),
    //                         ),
    //
    //            )
    //         ),

  ] ),

    );
  }
}
