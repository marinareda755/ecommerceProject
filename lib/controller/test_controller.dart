// import 'package:ecommerceproject/core/class/statusrequest.dart';
// import 'package:ecommerceproject/core/functions/handlingdatacontroller.dart';
// import 'package:ecommerceproject/data/datasource/remote/test_data.dart';
// import 'package:get/get.dart';
//
// class TestController extends GetxController{
//   TestData testData=TestData(Get.find());
//   List data=[];
//   late StatusRequest  statusRequest;
//   getData()async{
//     statusRequest=StatusRequest.loading;
//     var response=await testData.getData();
//     print('=================================== controller $response ');
//     statusRequest=handlingData(response);
//     if(StatusRequest.success==statusRequest){
//       data.addAll(response['data']);
//     }
//     update();
//   }
//   @override
//   void onInit() {
//     getData();
//     super.onInit();
//   }
//
// }