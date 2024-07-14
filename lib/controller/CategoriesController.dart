import 'package:flutter/foundation.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

import '../ecoomercePlus/data/models/categoriesModel.dart';



class CategoryController extends GetxController {
  var categories = <CategoryModel>[
    CategoryModel(imageName: 'assets/images/blouse.png', title: 'Blouse'),
    CategoryModel(imageName: 'assets/images/dress.png', title: 'Dress'),
    CategoryModel(imageName: 'assets/images/high-heels.png', title: 'High Heels'),
    CategoryModel(imageName: 'assets/images/shorts.png', title: 'Shorts'),
    CategoryModel(imageName: 'assets/images/trousers.png', title: 'Trousers'),
  ].obs;
}