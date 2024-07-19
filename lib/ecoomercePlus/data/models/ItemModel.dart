import 'dart:ffi';

import 'package:cloud_firestore/cloud_firestore.dart';

class Item {
  final String image;
  final String price;
  final String name;
  final String categories;
  final String description;
  final int count;


  Item(  { required this.image,  required this.price,  required this.name, required this.categories,required this.description,required this.count,});

  factory Item.fromFirestore(DocumentSnapshot doc) {
    Map data = doc.data() as Map;
    return Item(
      image: data['image'] ?? '',
      price: data['price'] ?? '',
      name: data['name'] ?? '',
      categories: data['categories'] ?? '',
      description: data['description'] ?? '',
      count: data['count'] ?? 0,
    );
  }
}


