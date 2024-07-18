import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';

import '../ecoomercePlus/data/models/CartModel.dart';

class CartControl extends GetxController{
  var itemCartControl = <Cartmodel>[].obs;
  var counts = <int>[].obs;

  void initializeCounts(int length) {
    counts.value = List<int>.generate(length, (index) => 0);
  }

  void increment(int index) {
    counts[index]++;
  }

  void decrement(int index) {
    if (counts[index] > 0) {
      counts[index]--;
    }
  }
  @override
  void onInit() {
    fetchItem();


    // fetchSubjectTree(Get.find<HomeController>().subjectID.value);

    super.onInit();
  }

  void fetchItem() async {
    QuerySnapshot snapshot = await FirebaseFirestore.instance
        .collection('items')
    // .where('categories', isEqualTo:Get.find<CategoryController>().category.value)
        .get();
    var itemList = snapshot.docs.map((doc) => Cartmodel.fromFirestore(doc)).toList();
    itemCartControl.assignAll(itemList);
    update();
  }


  }
