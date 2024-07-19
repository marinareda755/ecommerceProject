import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

class Paymentcontroller extends GetxController {
  var cardNumber = ''.obs;
  var expiryDate = ''.obs;
  var cardHolderName = ''.obs;
  var cvvCode = ''.obs;
  var isCvvFocused = false.obs;

  void updateCardNumber(String value) {
    cardNumber.value = value;
  }

  void updateExpiryDate(String value) {
    expiryDate.value = value;
  }

  void updateCardHolderName(String value) {
    cardHolderName.value = value;
  }

  void updateCvvCode(String value) {
    cvvCode.value = value;
  }

  void toggleCvvFocus(bool value) {
    isCvvFocused.value = value;
  }
}