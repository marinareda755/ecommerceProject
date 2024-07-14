import 'package:ecommerceproject/core/constant/routes.dart';
import 'package:get/get.dart';

abstract class SucessSignUpController extends GetxController{
  goToPageLogin();

}
class SucessSignUpControllerImp extends SucessSignUpController{
  @override
  goToPageLogin() {
    Get.offAllNamed(AppRoute.login);
  }

}