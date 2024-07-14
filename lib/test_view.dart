// import 'package:ecommerceproject/controller/test_controller.dart';
// import 'package:ecommerceproject/core/class/statusrequest.dart';
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
//
// class TestView extends StatelessWidget {
//   const TestView({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     Get.put(TestController());
//     return Scaffold(
//       appBar: AppBar(title: Text('tit'),),
//       body: Container(
//         child: Column(
//           children: [
//             GetBuilder<TestController>(
//                 builder: (controller){
//                   if(controller.statusRequest==StatusRequest.loading){
//                     return Center(child: Text('loading'));
//                   }else if(controller.statusRequest==StatusRequest.loading){
//                     return Center(child: Text('offline failure'));
//                   }else if(controller.statusRequest==StatusRequest.serverfailure){
//                     return Center(child: Text('server failure'));
//                   }else{
//                     return ListView.builder(
//                       itemCount: controller.data.length,
//                         itemBuilder: (context,index){
//                         return Text('${controller.data}');
//
//
//                     });
//                   }
//                 })
//           ],
//         ),
//       ),
//     );
//   }
// }
