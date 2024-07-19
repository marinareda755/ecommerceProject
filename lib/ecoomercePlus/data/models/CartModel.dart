import 'package:cloud_firestore/cloud_firestore.dart';

class Cartmodel {
  final String name;
  final String price;
  final String image;
  final int count;





  Cartmodel({required this.image, required this.name, required this.price, required this.count});


  factory Cartmodel.fromFirestore(DocumentSnapshot doc) {
    Map data = doc.data() as Map;
    return Cartmodel(
        image: data['image'] ?? '',
        price: data['price'] ?? '',
        name: data['name'] ?? '',
        count: data['count'] ?? 0,);
}}