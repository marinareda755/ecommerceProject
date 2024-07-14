// import 'package:ecommerceproject/core/constant/color.dart';
// import 'package:flutter/material.dart';
//
// class Home extends StatelessWidget {
//   const Home({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       // appBar: AppBar(title: Text('home'),),
//       body: Container(
//         padding: EdgeInsets.all(15),
//         child: ListView(
//           children: [
//             Container(
//               margin: EdgeInsets.only(top: 15),
//               padding: EdgeInsets.symmetric(horizontal: 25),
//               child: Row(
//                 children: [
//               Expanded(child: TextFormField(
//                 decoration: InputDecoration(
//                     prefixIcon: Icon(Icons.search_outlined),
//                   hintText:'Find Product' ,
//                   border: OutlineInputBorder(
//                       borderSide: BorderSide.none,
//                     borderRadius: BorderRadius.circular(30),
//                   ),
//                   filled: true,
//                   fillColor: Colors.grey[200]
//
//                 ),
//               ))
//             ],),),
//             Container(
//               margin: EdgeInsets.symmetric(vertical: 15),
//               child: Stack(children: [
//               Container(
//                 alignment: Alignment.center,
//                 child: ListTile(
//                   title: Text('A Summer Surprice',style: TextStyle(color: Colors.white,fontSize: 20),),
//                   subtitle: Text('A Sale 20% ',style: TextStyle(color: Colors.white,fontSize: 30),),
//                 ),
//                 height: 150,
//
//                 decoration: BoxDecoration(
//                   borderRadius: BorderRadius.circular(20),
//                   color: AppColor.primaryColor,
//                 ),
//               )
//             ],),)
//
//
//           ],
//         ),
//       ),
//
//     );
//   }
// }










import 'package:ecommerceproject/controller/control_controller.dart';
import 'package:ecommerceproject/controller/home_controller.dart';
import 'package:ecommerceproject/core/constant/color.dart';
import 'package:ecommerceproject/core/constant/imageasset.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Home extends StatelessWidget {

  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    HomeController controller = Get.put(HomeController());
    final List<String>names=['Men','2','3','4','5'];
    return Scaffold(
      // appBar: AppBar(title: Text('home'),),
      body: Container(
        padding: EdgeInsets.only(top: 50,left: 20,right: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _searchTextFormField(),
            SizedBox(height: 10,),
            Text('Categories',textAlign: TextAlign.left,),
            SizedBox(height: 10,),
            _listViewCategory(names),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
              Text('Best Selling'),
              Text('See All',),

            ],),
            SizedBox(height: 20,),
             _listViewProduct(names),

            SizedBox(height: 50,)

          ],
        ),
      ),
      // bottomNavigationBar:bottomNavigationBar()  ,

    );
  }

  Widget _searchTextFormField() {
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey[200],
        borderRadius: BorderRadius.circular(20),
      ),
      child: TextFormField(
        decoration: InputDecoration(
            prefixIcon: Icon(Icons.search_outlined),
            border: InputBorder.none

        ),

      ),
    );
  }

  Widget _listViewCategory(List<String>names) {
    return  Expanded(
      child: Container(
        height: 100,
        child: ListView.separated(
          scrollDirection: Axis.horizontal,
          itemCount: names.length,
          itemBuilder: (context,index){
            return Column(
              children: [
                Container(
                  height: 50,
                  width: 60,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.grey[200],
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image.asset(AppImageAsset.mensShoe),
                  ),
                ),
                SizedBox(height: 20,),
                Text(names[index]),

              ],
            );


          }, separatorBuilder: ( context,  index)=>SizedBox(width: 20,),
        ),
      ),

    );
  }

  Widget _listViewProduct(List<String>names) {
      return  Expanded(
        flex: 2,
      child: Container(
        height: 120,
        child: ListView.separated(
          scrollDirection: Axis.horizontal,
          itemCount: names.length,
          itemBuilder: (context,index){
            return Column(
              children: [
                Container(

                  width: MediaQuery.of(context).size.width*.4,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.grey[200],
                  ),
                  child: Container(
                      height: 200,
                      child: Image.asset(AppImageAsset.clock,fit:BoxFit.fill ,)),
                  
                ),
                Text('BeoPlay Speaker',),
                Text('BeoPlay Speaker',),
                Text('\$755',style: TextStyle(color: AppColor.primaryColor),),



              ],
            );


          }, separatorBuilder: ( context,  index)=>SizedBox(width: 20,),
        ),
      ),

    );
  }

  // Widget bottomNavigationBar() {
  //   return GetBuilder<ControlController>(
  //     builder: ( controller)=>
  //      BottomNavigationBar(
  //         items: [
  //           BottomNavigationBarItem(
  //             label: 'Explore',
  //               icon: Image.asset(AppImageAsset.explore,fit: BoxFit.contain,)),
  //           BottomNavigationBarItem(
  //               label: 'Cart',
  //               icon: Image.asset(AppImageAsset.cart,fit: BoxFit.contain,)),
  //           BottomNavigationBarItem(
  //               label: 'User',
  //               icon: Image.asset(AppImageAsset.user,fit: BoxFit.contain,)),
  //         ],
  //       currentIndex: controller.navigatorValue,
  //       onTap:(index){
  //           controller.changeSelectedValue(index);
  //           print(index);
  //       } ,
  //     ),
  //   );
  // }
}










// import 'package:ecommerceproject/core/constant/color.dart';
// import 'package:ecommerceproject/core/constant/imageasset.dart';
// import 'package:flutter/material.dart';
//
// class Home extends StatelessWidget {
//   const Home({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     final List<String> names = ['Men', '2', '3', '4', '5'];
//     return Scaffold(
//       // appBar: AppBar(title: Text('home'),),
//       body: Container(
//         padding: const EdgeInsets.only(top: 100, left: 20, right: 20),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             _searchTextFormField(),
//             const SizedBox(height: 50),
//             const Text('Categories', textAlign: TextAlign.left),
//             const SizedBox(height: 50),
//             _listViewCategory(names),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: const [
//                 Text('Best Selling'),
//                 Text('See All'),
//               ],
//             ),
//           ],
//         ),
//       ),
//     );
//   }
//
//   Widget _searchTextFormField() {
//     return Container(
//       decoration: BoxDecoration(
//         color: Colors.grey[200],
//         borderRadius: BorderRadius.circular(20),
//       ),
//       child: TextFormField(
//         decoration: const InputDecoration(
//           prefixIcon: Icon(Icons.search_outlined),
//           border: InputBorder.none,
//         ),
//       ),
//     );
//   }
//
//   Widget _listViewCategory(List<String> names) {
//     return Expanded(
//       child: Container(
//         height: 100,
//         child: ListView.separated(
//           scrollDirection: Axis.horizontal,
//           itemCount: names.length,
//           itemBuilder: (context, index) {
//             return Column(
//               children: [
//                 Container(
//                   height: 60,
//                   width: 60,
//                   decoration: BoxDecoration(
//                     borderRadius: BorderRadius.circular(20),
//                     color: Colors.grey[200],
//                   ),
//                   child: Padding(
//                     padding: const EdgeInsets.all(8.0),
//                     child: Image.asset(AppImageAsset.mensShoe),
//                   ),
//                 ),
//                 const SizedBox(height: 20),
//                 Text(names[index]),
//               ],
//             );
//           },
//           separatorBuilder: (context, index) => const SizedBox(width: 20),
//         ),
//       ),
//     );
//   }
// }
