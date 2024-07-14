import 'package:get/get.dart';

import '../core/class/StatusRequest.dart';
import '../ecoomercePlus/core/class/StatusRequest.dart';

class CheckoutController extends GetxController {
  StatusRequest  statusRequest= StatusRequest.none;
  String? paymentMethod;
  String? delivaryType;
  String? addressid;

  ChoosePaymentMethod(String val) {
    paymentMethod =val;
    update();
  }

  ChooseDelivartType(String val) {
    delivaryType=val;
    update();
  }

  ChooseAddress(String val) {
    addressid=val ;
    update();
  }
}
