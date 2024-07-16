import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:ecommerceproject/ecoomercePlus/data/models/ItemModel.dart';
import 'package:get/get.dart';

// class HomeviewModel extends GetxController {
//   Future<List<ItemModel>> fetchItemsFromFirestore() async {
//     CollectionReference items = FirebaseFirestore.instance.collection('items');
//     QuerySnapshot querySnapshot = await items.get();
//
//
//     return querySnapshot.docs.map((doc) {
//       return ItemModel.fromJson(doc.data() as Map<String, dynamic>);
//     }).toList();
//   }
//   // List <ItemModel> get itemModel => _itemModel;
//   // List <ItemModel> _itemModel =[];
//   // CollectionReference _itemCollectionRef =
//   //     FirebaseFirestore.instance.collection('items');
//   //
//   // HomeviewModel() {
//   //   getitem();
//   // }
//   //
//   // getitem() async {
//   //   _itemCollectionRef.get().then((Value) {
//   //     for(int i= 0; i<Value.docs.length;i++){
//   //       _itemModel.add(ItemModel.fromJson(Value.docs[i].data()));
//   //     }
//   //     update();
//   //   });
//   // }
// }
