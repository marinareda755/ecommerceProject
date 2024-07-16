// import 'package:ecommerceproject/core/class/crud.dart';
// import 'package:get/get.dart';
//
// class InitialBindings extends Bindings{
//   @override
//   void dependencies() {
//     Get.put(Crud());
//   }
//
// }








import 'package:ecommerceproject/controller/auth/signup_controller.dart';
import 'package:ecommerceproject/controller/home_controller.dart';
import 'package:get/get.dart';

class MyBinding extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut(()=>SignUpControllerImp(),fenix: true);
    // Get.lazyPut(()=>HomeController());
  }

}








