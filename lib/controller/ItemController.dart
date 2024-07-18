import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:ecommerceproject/ecoomercePlus/data/models/ItemModel.dart';
import 'package:get/get.dart';

import 'package:get/get_state_manager/src/simple/get_controllers.dart';

import 'CategoriesController.dart';

class ItemController extends GetxController  {
  var item = <Item>[].obs;




  // @override
  // void onInit() {
  //   fetchItem();
  //    fetchItems();
  // }

  @override
  void onInit() {

    fetchItems();
    // fetchSubjectTree(Get.find<HomeController>().subjectID.value);
    print("objectttt");
    super.onInit();

  }
  void fetchItems() async {
    print("lklkll"+Get.find<CategoryController>().category.value);
    QuerySnapshot snapshot = await FirebaseFirestore.instance.collection('items')
       .where('categories', isEqualTo:Get.find<CategoryController>().category.value)
    .get();
    var itemList = snapshot.docs.map((doc) => Item.fromFirestore(doc)).toList();
    item.assignAll(itemList);
    update();
  }

}
// class ItemsController extends GetxController {
//   var items = <Item>[].obs;
//
//   @override
//   void onInit() {
//     super.onInit();
//     fetchItems();
//   }
//
//   void fetchItems(String category) async {
//     QuerySnapshot snapshot = await FirebaseFirestore.instance
//         .collection('items')
//         .where('category', isEqualTo: category)
//         .get();
//     var itemsList = snapshot.docs.map((doc) => Item.fromFirestore(doc)).toList();
//     items.assignAll(itemsList);
//   }
// }



