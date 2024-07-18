import 'package:ecommerceproject/view/screen/profile.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

import '../ecoomercePlus/screen/auth/Home.dart';
import '../ecoomercePlus/screen/auth/Setting.dart';
import '../ecoomercePlus/screen/auth/cart.dart';


abstract class HomeScreenController extends GetxController {
  changePage(int currentpage);
}

class HomeScreenControllerImp extends HomeScreenController {
  int currentpage = 0;

  List<Widget> listPage = [
     HomePage(),



   const Profile(),
     Cart(),

    const Setting(),



  ];

  List bottomappbar = [
    {"title": "home", "icon": Icons.home},
    {"title": "profile", "icon": Icons.person_pin_sharp},
    {"title": "cart", "icon": Icons.shopping_cart},
    {"title": "settings", "icon": Icons.settings}

  ];

  @override
  changePage(int i) {
    currentpage = i;
    update();
  }
}