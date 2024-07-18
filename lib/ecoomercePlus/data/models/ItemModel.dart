import 'dart:ffi';

import 'package:cloud_firestore/cloud_firestore.dart';

class Item {
  final String image;
  final String price;
  final String name;
  final String categories;
  final String description;


  Item(  { required this.image,  required this.price,  required this.name, required this.categories,required this.description,});

  factory Item.fromFirestore(DocumentSnapshot doc) {
    Map data = doc.data() as Map;
    return Item(
      image: data['image'] ?? '',
      price: data['price'] ?? '',
      name: data['name'] ?? '',
      categories: data['categories'] ?? '',
      description: data['description'] ?? '',
    );
  }
}


