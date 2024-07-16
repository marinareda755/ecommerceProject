import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';

import '../../../controller/HomeScreenController.dart';
import 'Bottomappbar.dart';

class CustomBottomAppBarHome extends StatelessWidget {
  const CustomBottomAppBarHome({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeScreenControllerImp>(
        builder: (controller) => BottomAppBar(
            shape: const CircularNotchedRectangle(),
            notchMargin: 10,
            child: Row(
              children: [

                ...List.generate(controller.listPage.length , ((index) {
                  int i = index > 3? index - 1 : index;
                  return
                       Expanded(
                         child: CustomButtonAppBar(
                                               textbutton: controller.bottomappbar[i]['title'],
                                               icondata: controller.bottomappbar[i]['icon'],
                                               onPressed: () {
                          controller.changePage(i);
                                               },
                                               active: controller.currentpage == i ? true : false),
                       );
                }))
              ],
            )));
  }
}