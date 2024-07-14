import 'package:ecommerceproject/controller/control_controller.dart';
import 'package:ecommerceproject/core/constant/imageasset.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Control extends StatelessWidget {
  ControlController controller = Get.put(ControlController());
   Control({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<ControlController>(
      // init: ControlController(),
      builder: ( controller) =>
       Scaffold(
        body: controller.currentScreen,
        bottomNavigationBar:bottomNavigationBar()  ,
      ),
    );
  }
  Widget bottomNavigationBar() {
    return GetBuilder<ControlController>(
      builder: ( controller)=>
          BottomNavigationBar(
            items: [
              BottomNavigationBarItem(
                  label: 'Explore',
                  icon: Image.asset(AppImageAsset.explore,fit: BoxFit.contain,)),
              BottomNavigationBarItem(
                  label: 'Cart',
                  icon: Image.asset(AppImageAsset.cart,fit: BoxFit.contain,)),
              BottomNavigationBarItem(
                  label: 'User',
                  icon: Image.asset(AppImageAsset.user,fit: BoxFit.contain,)),
            ],
            currentIndex: controller.navigatorValue,
            onTap:(index){
              controller.changeSelectedValue(index);
              print(index);
            } ,
          ),
    );
  }
}





// import 'package:ecommerceproject/controller/control_controller.dart';
// import 'package:ecommerceproject/core/constant/imageasset.dart';
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
//
// class Control extends StatefulWidget {
//   @override
//   _ControlState createState() => _ControlState();
// }
//
// class _ControlState extends State<Control> {
//   final ControlController _controller = Get.put(ControlController());
//
//   int _currentIndex = 0;
//
//   List<Widget> _screens = [
//     Home(),
//     Cart(),
//     Profile(),
//   ];
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: _screens[_currentIndex],
//       bottomNavigationBar: BottomNavigationBar(
//         items: [
//           BottomNavigationBarItem(
//             label: 'Explore',
//             icon: Image.asset(
//               AppImageAsset.explore,
//               fit: BoxFit.contain,
//             ),
//           ),
//           BottomNavigationBarItem(
//             label: 'Cart',
//             icon: Image.asset(
//               AppImageAsset.cart,
//               fit: BoxFit.contain,
//             ),
//           ),
//           BottomNavigationBarItem(
//             label: 'User',
//             icon: Image.asset(
//               AppImageAsset.user,
//               fit: BoxFit.contain,
//             ),
//           ),
//         ],
//         currentIndex: _currentIndex,
//         onTap: (index) {
//           setState(() {
//             _currentIndex = index;
//           });
//           _controller.changeSelectedValue(index);
//         },
//       ),
//     );
//   }
// }










