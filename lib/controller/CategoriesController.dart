import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

import '../ecoomercePlus/data/models/ItemModel.dart';
import '../ecoomercePlus/data/models/categoriesModel.dart';

class CategoryController extends GetxController {
  var items = <Item>[].obs;
  var category = "".obs;
  var categories = <CategoryModel>[
    CategoryModel(imageName: 'assets/images/blouse.png', title: 'Blouse'),
    CategoryModel(imageName: 'assets/images/dress.png', title: 'Dress'),
    CategoryModel(
        imageName: 'assets/images/high-heels.png', title: 'High Heels'),
    CategoryModel(imageName: 'assets/images/shorts.png', title: 'Shorts'),
    CategoryModel(imageName: 'assets/images/trousers.png', title: 'Trousers'),

    // CategoryModel(imageName: 'assets/images/blouse.png', title: '44'.tr),
    // CategoryModel(imageName: 'assets/images/dress.png', title: '45'.tr),
    // CategoryModel(
    //     imageName: 'assets/images/high-heels.png', title: '46'.tr),
    // CategoryModel(imageName: 'assets/images/shorts.png', title: '47'.tr),
    // CategoryModel(imageName: 'assets/images/trousers.png', title: '48'.tr),
  ].obs;

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
    var itemList = snapshot.docs.map((doc) => Item.fromFirestore(doc)).toList();
    items.assignAll(itemList);
    update();
  }
}
