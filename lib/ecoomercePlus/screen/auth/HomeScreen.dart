// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:get/get_core/src/get_main.dart';
//
// import '../../../controller/HomeScreenController.dart';
// import '../../widget/Home/Customappbar.dart';
//
// class HomeScreen extends StatelessWidget {
//   const HomeScreen({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     Get.put(HomeScreenControllerImp());
//     return GetBuilder<HomeScreenControllerImp>(
//         builder: (controller) => Scaffold(
//           floatingActionButton: FloatingActionButton(
//               backgroundColor: Colors.red,
//               onPressed: () {
//                 // Get.toNamed(AppRoute.cart) ;
//               },
//               child: const Icon(Icons.shopping_basket_outlined)),
//           floatingActionButtonLocation:
//           FloatingActionButtonLocation.centerDocked,
//           bottomNavigationBar: const CustomBottomAppBarHome(),
//           body: controller.listPage.elementAt(controller.currentpage),
//         ));
//   }
// }