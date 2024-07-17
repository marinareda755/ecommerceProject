import 'package:ecommerceproject/controller/setting_controller.dart';
import 'package:ecommerceproject/core/constant/imageasset.dart';
import 'package:ecommerceproject/core/constant/routes.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../../view/screen/language.dart';


class Setting extends StatelessWidget {
  const Setting({super.key});

  @override
  Widget build(BuildContext context) {
    SettingControllerImp controller=Get.put(SettingControllerImp());
    return Container(
      child: ListView(
        children: [
          Stack(
              clipBehavior: Clip.none,
              alignment: Alignment.center,
              children: [
                Container(height: Get.width / 3, color: Colors.red),
                Positioned(
                    top: Get.width / 3.9,
                    child: Container(
                      padding: EdgeInsets.all(4),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(100)),
                      child: CircleAvatar(
                        radius: 40,
                        backgroundColor: Colors.grey[100],
                        backgroundImage: AssetImage(AppImageAsset.onBoardingImageOne),
                      ),
                    )),
              ]),
          SizedBox(height: 100),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Card(
              child: Column(mainAxisSize: MainAxisSize.min, children: [
                // ListTile(
                //   // onTap: () {},
                //   trailing: Switch(onChanged: (val) {}, value: true),
                //   title: Text("Disable Notificatios"),
                // ),
                // ListTile(
                //   onTap: () {
                //     // Get.toNamed(AppRoute.orderspending);
                //   },
                //   trailing: Icon(Icons.card_travel),
                //   title: Text("Orders"),
                // ),
                // ListTile(
                //   onTap: () {
                //     // Get.toNamed(AppRoute.ordersarchive );
                //   },
                //   trailing: Icon(Icons.card_travel),
                //   title: Text("Archive"),
                // ),
                // ListTile(
                //   onTap: () {
                //     // Get.toNamed(AppRoute.addressview);
                //   },
                //   trailing: Icon(Icons.location_on_outlined),
                //   title: Text("Address"),
                // ),
                ListTile(
                  onTap: () {},
                  trailing: Icon(Icons.help_outline_rounded),
                  title: Text("About us"),
                ),
                ListTile(
                  onTap: () {},
                  trailing: Icon(Icons.phone_callback_outlined),
                  title: Text("Contact us"),
                ),
                // ListTile(
                //   onTap: () {
                //
                //   },
                //   title: Text("Logout"),
                //   trailing: Icon(Icons.exit_to_app),
                // ),
              ]),
            ),
          )
        ],
      ),
    );
  }}










// import 'package:ecommerceproject/controller/setting_controller.dart';
// import 'package:ecommerceproject/core/constant/color.dart';
// import 'package:ecommerceproject/core/constant/imageasset.dart';
// import 'package:ecommerceproject/core/constant/routes.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:get/get_core/src/get_main.dart';
//
// import '../../../view/screen/language.dart';
//
//
// class Setting extends StatelessWidget {
//   const Setting({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     SettingControllerImp controller=Get.put(SettingControllerImp());
//     return Container(
//       child: ListView(
//         children: [
//           Stack(
//               clipBehavior: Clip.none,
//               alignment: Alignment.center,
//               children: [
//                 Container(height: Get.width / 3, color: AppColor.primaryColor),
//                 Positioned(
//                     top: Get.width / 3.9,
//                     child: Container(
//                       padding: EdgeInsets.all(4),
//                       decoration: BoxDecoration(
//                           color: Colors.white,
//                           borderRadius: BorderRadius.circular(100)),
//                       child: CircleAvatar(
//                         radius: 40,
//                         backgroundColor: Colors.grey[100],
//                         backgroundImage:controller.imageFile==null? AssetImage(AppImageAsset.onBoardingImageThree):FileImage(controller.imageFile!)as ImageProvider,
//                       ),
//                     )),
//                 Positioned(
//                   top: Get.width / 4,
//                   // bottom: 10,
//                   // right: 10,
//
//                   child: InkWell(
//                       onTap: (){
//                         controller.pickImage();
//                       },
//                       child: Icon(Icons.camera)),
//                 ),
//               ]),
//           SizedBox(height: 100),
//           Container(
//             padding: EdgeInsets.symmetric(horizontal: 10),
//             child: Card(
//               child: Column(mainAxisSize: MainAxisSize.min, children: [
//                 // ListTile(
//                 //   // onTap: () {},
//                 //   trailing: Switch(onChanged: (val) {}, value: true),
//                 //   title: Text("Disable Notificatios"),
//                 // ),
//                 ListTile(
//                   onTap: () {
//                     // Get.toNamed(AppRoute.orderspending);
//                   },
//                   trailing: Icon(Icons.card_travel),
//                   title: Text("Orders"),
//                 ),
//                 ListTile(
//                   onTap: () {
//                     // Get.toNamed(AppRoute.ordersarchive );
//                   },
//                   trailing: Icon(Icons.card_travel),
//                   title: Text("Archive"),
//                 ),
//                 ListTile(
//                   onTap: () {
//                     // Get.toNamed(AppRoute.addressview);
//                   },
//                   trailing: Icon(Icons.location_on_outlined),
//                   title: Text("Address"),
//                 ),
//                 ListTile(
//                   onTap: () {},
//                   trailing: Icon(Icons.help_outline_rounded),
//                   title: Text("About us"),
//                 ),
//                 ListTile(
//                   onTap: () {},
//                   trailing: Icon(Icons.phone_callback_outlined),
//                   title: Text("Contact us"),
//                 ),
//                 ListTile(
//                   onTap: () {
//                     controller.logOut();
//                   },
//                   title: Text("Logout"),
//                   trailing: Icon(Icons.exit_to_app),
//                 ),
//               ]),
//             ),
//           )
//         ],
//       ),
//     );
//   }}

