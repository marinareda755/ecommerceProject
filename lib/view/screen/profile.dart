

import 'package:ecommerceproject/controller/profile_controller.dart';
import 'package:ecommerceproject/core/constant/color.dart';
import 'package:ecommerceproject/core/constant/imageasset.dart';
import 'package:ecommerceproject/core/constant/routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(ProfileControllerImp());
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(10),
        child: GetBuilder<ProfileControllerImp>(
            builder: (controller) => ListView(
                  children: [
                    SizedBox(
                      height: 40,
                    ),
                    Row(
                      children: [
                        Stack(children: [
                          Container(
                            padding: EdgeInsets.all(4),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(100)),
                            child:CircleAvatar(
                              radius: 40,
                              backgroundColor: Colors.grey[100],
                              backgroundImage: controller.imageFile != null
                                  ? FileImage(controller.imageFile!)
                                  : controller.myServices.sharedPreferences.getString('profileImageUrl') == null || controller.myServices.sharedPreferences.getString('profileImageUrl') == ''
                                  ?AssetImage(AppImageAsset.profile)
                                  :NetworkImage(controller.myServices.sharedPreferences.getString('profileImageUrl')!) ,
                            ),
                          ),
                          Positioned(
                            bottom: 10,
                            left: 10,
                            child: InkWell(
                                onTap: () {
                                  controller.pickImage();
                                },
                                child: Icon(Icons.camera)),
                          ),
                        ]),
                        SizedBox(
                          width: 20,
                        ),
                        Column(
                          children: [
                            Text(
                              controller.myServices.sharedPreferences.getString('email')!,
                              style: TextStyle(
                                  color: AppColor.primaryColor, fontSize: 16),
                            ),
                          ],
                        )
                      ],
                    ),
                    SizedBox(height: 50),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      child: Card(
                        child:
                            Column(mainAxisSize: MainAxisSize.min, children: [
                          ListTile(
                            onTap: () {
                              controller.uploadImage();
                            },
                            trailing: Icon(Icons.save),
                            title: Text("53".tr),
                          ),
                          ListTile(
                            onTap: () {
                              Get.toNamed(AppRoute.homePage );
                            },
                            trailing: Icon(Icons.home_outlined),
                            title: Text("54".tr),
                          ),
                          // ListTile(
                          //   onTap: () {
                          //     // Get.toNamed(AppRoute.addressview);
                          //   },
                          //   trailing: Icon(Icons.location_on_outlined),
                          //   title: Text("Address"),
                          // ),
                          ListTile(
                            onTap: () {
                              controller.logOut();
                            },
                            title: Text("55".tr),
                            trailing: Icon(Icons.exit_to_app),
                          ),
                        ]),
                      ),
                    )
                  ],
                )),
      ),
    );
  }
}
