import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../../controller/CategoriesController.dart';
import '../../../controller/ItemController.dart';
import '../../../view/screen/DetailsItem.dart';

class Items extends StatelessWidget {
  const Items({super.key});

  @override
  Widget build(BuildContext context) {
    final ItemController itemController = Get.put(ItemController());

    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Container(
        child: ListView(
          children: [Column(
            children: [
              Container(
                margin: EdgeInsets.only(top: 10),
                padding: EdgeInsets.symmetric(horizontal: 15),
                child: Row(
                  children: [
                    Expanded(
                      child: TextFormField(
                        decoration: InputDecoration(
                          prefixIcon: Icon(Icons.search, size: 30),
                          hintText: 'Find Product',
                          hintStyle: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                          border: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          filled: true,
                          fillColor: Colors.grey[200],
                        ),
                      ),
                    ),
                    SizedBox(width: 5),
                    Container(
                      width: 60,
                      padding: EdgeInsets.symmetric(vertical: 8),
                      child: IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.notification_add_outlined, size: 30, color: Colors.grey),
                      ),
                    ),
                  ],
                ),
              ),
            ]
          ),
            SizedBox(height: 10,),
            GridView.builder(
              itemCount: itemController.items.length,
              itemBuilder: (context, i) {
                return InkWell(
                  onTap: () {
                    Get.to(DetailsItem(item: itemController.items[i]));
                  },
                  child: Card(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          color: Colors.grey[200],
                          child: Image.network(
                            itemController.items[i].image,
                            height: screenHeight* 0.1,
                            width: screenWidth*0.5,
                            fit: BoxFit.fill,
                          ),
                        ),
                        Text(
                          itemController.items[i].name,
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          itemController.items[i].categories,
                          style: TextStyle(
                            fontSize: 10,
                            color: Colors.grey,
                          ),
                        ),
                        Text(
                          '\$${itemController.items[i].price}',
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.red[400],
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
