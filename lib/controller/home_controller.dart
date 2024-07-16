// import 'package:get/get.dart';
//
//
// class HomeController extends GetxController {
//   int _navigatorValue=0;
//   get navigatorValue=> _navigatorValue;
//
//
//   void changeSelectedValue(int selectedValue) {
//     _navigatorValue=selectedValue;
//
//   }
//
// }


// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:ecommerceproject/data/model/category_model.dart';
// import 'package:ecommerceproject/ecoomercePlus/data/models/categoriesModel.dart';
// import 'package:ecommerceproject/view/screen/home.dart';
// import 'package:get/get.dart';
//
// class HomeController extends GetxController{
//
//   List<CategoryModel> categoryModel=[];
//
//   final CollectionReference category=
//       FirebaseFirestore.instance.collection('Categories');
//   HomeController(){
//     getCategory();
//   }
//   getCategory() async {
//    await category.get().then((value){
//      print(value.docs[0].data());
//      // for(int i=0;i<value.docs.length;i++){
//      //   categoryModel.add(CategoryModel.fromJson(value.docs[i].data()));
//      // }
//    });
//   }
//
//
//
//   getCategory() async {
//     final cats=await category.get().then(value);
//     for(var cat in cats.docs){
//       print(cat.data());
//     }
//     category.add(CategoryModel.fromJson())
//   }
//
//
//
// }




// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:ecommerceproject/data/model/category_model.dart';
// import 'package:ecommerceproject/ecoomercePlus/data/models/categoriesModel.dart';
// import 'package:ecommerceproject/view/screen/home.dart';
// import 'package:get/get.dart';
//
// class HomeController extends GetxController {
//   List<CategoryModel> categoryModel = [];
//
//   final CollectionReference category =
//   FirebaseFirestore.instance.collection('Categories');
//
//   HomeController() {
//     getCategory();
//   }
//
//   getCategory() async {
//     QuerySnapshot<Object?> snapshot = await category.get();
//     for (QueryDocumentSnapshot<Map<String, dynamic>> doc in snapshot.docs) {
//       Map<String, dynamic>? data = doc.data();
//       if (data != null) {
//         categoryModel.add(CategoryModel.fromJson(data));
//       }
//     }
//   }
// }