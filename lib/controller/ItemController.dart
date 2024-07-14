import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

abstract class ItemsController extends GetxController {
  intialData();
  changeCat(int val);
}

class ItemsControllerImp extends ItemsController {
  List categories = [

  ];
  int? selectedCat;

  @override
  void onInit() {
    intialData();
    super.onInit();
  }

  @override
  intialData() {
    categories = Get.arguments['categories'];
    selectedCat = Get.arguments['selectedcat'];
  }

  @override
  changeCat(val) {
    selectedCat = val;
    update();
  }
}