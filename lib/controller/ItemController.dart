import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:ecommerceproject/ecoomercePlus/data/models/ItemModel.dart';
import 'package:get/get.dart';

import 'package:get/get_state_manager/src/simple/get_controllers.dart';

class ItemController extends GetxController {
  var items = <Item>[].obs;

  @override
  void onInit() {
    super.onInit();
    fetchItems();
  }

  void fetchItems() async {
    QuerySnapshot snapshot = await FirebaseFirestore.instance.collection('items').get();
    var itemList = snapshot.docs.map((doc) => Item.fromFirestore(doc)).toList();
    items.assignAll(itemList);
  }
}





// abstract class ItemsController extends GetxController {
//   intialData();
//   changeCat(int val);
// }
//
// class ItemsControllerImp extends ItemsController {
//   List categories = [
//
//   ];
//   int? selectedCat;
//
//   @override
//   void onInit() {
//     intialData();
//     super.onInit();
//   }
//
//   @override
//   intialData() {
//     categories = Get.arguments['categories'];
//     selectedCat = Get.arguments['selectedcat'];
//   }
//
//   @override
//   changeCat(val) {
//     selectedCat = val;
//     update();
//   }
// }