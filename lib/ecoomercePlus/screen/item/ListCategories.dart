import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';

import '../../../controller/ItemController.dart';

// class ListCategoriesItems extends GetView<ItemsControllerImp> {
//   const ListCategoriesItems({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return SizedBox(
//       height: 100,
//       child: ListView.separated(
//         separatorBuilder: (context, index) => const SizedBox(width: 10),
//         itemCount: controller.categories.length,
//         scrollDirection: Axis.horizontal,
//         itemBuilder: (context, index) {
//           return Categories(
//             i: index,
//             categoriesModel:'',
//
//           );
//         },
//       ),
//     );
//   }
// }
//
//
//
// class Categories extends GetView<ItemsControllerImp> {
//   // final CategoriesModel categoriesModel;
//   final int? i;
//   const Categories({Key? key,  required this.i, required categoriesModel})
//       : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return InkWell(
//       onTap: () {
//         // controller.goToItems(controller.categories, i!);
//         controller.changeCat(i!);
//       },
//       child: Column(
//         children: [
//           GetBuilder<ItemsControllerImp>(
//               builder: (controller) => Container(
//
//                 padding: EdgeInsets.only(right: 10 , left: 10 , bottom: 5),
//                 decoration: controller.selectedCat == i
//                     ? BoxDecoration(
//                     border: Border(
//                         bottom: BorderSide(
//                             width: 3, color: Colors.red)))
//                     : null,
//                 child: Text(
//                   "dress",
//                   style:
//                   const TextStyle(fontSize: 20, color: Colors.grey
//                   ),
//                 ),
//               ))
//         ],
//       ),
//     );
//   }
// }