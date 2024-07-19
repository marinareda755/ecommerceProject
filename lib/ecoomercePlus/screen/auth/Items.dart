
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../../controller/CategoriesController.dart';
import '../../../controller/ItemController.dart';
import 'DetailsItem.dart';


class Items extends StatelessWidget {
  final controller_ = Get.put(CategoryController());
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    return GetBuilder<ItemController>(
        init: ItemController(),
        builder: (controller) {
          return SafeArea(
            child: Scaffold(
              body: SingleChildScrollView(
                child: Column(children: [
                  Container(
                    margin: EdgeInsets.only(top: 10),
                    padding: EdgeInsets.symmetric(horizontal: 15),
                    child: Row(
                      children: [
                        Expanded(
                          child: TextFormField(
                            onChanged: (value) => controller.search(value),
                            decoration: InputDecoration(
                              prefixIcon: Icon(Icons.search, size: 30),
                              hintText: 'Find Product',
                              hintStyle: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
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
                            icon: Icon(Icons.notification_add_outlined,
                                size: 30, color: Colors.grey),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  GridView.builder(
                    itemCount: controller.item.length,

                    itemBuilder: (context, i) {
                      return InkWell(
                        onTap: () {
                          // print("KKKKKK"+controller.item[i].image);
                          Get.to(DetailsItem(item: controller.item[i]));
                        },
                        child: Card(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 12),
                                child: Container(
                                  color: Colors.grey[200],

                                  child: Image.network(
                                    controller.item[i].image,
                                    height: screenHeight * 0.1,
                                    width: screenWidth * 0.5,
                                    fit: BoxFit.fill,
                                  ),
                                ),
                              ),
                              Text(
                                controller.item[i].name,
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                                child: Text(
                                  controller.item[i].description,
                                  style: TextStyle(
                                    fontSize: 10,
                                    color: Colors.grey,
                                    overflow: TextOverflow.ellipsis
                                  ),
                                ),
                              ),
                              Text(
                                '\$${controller.item[i].price}',
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
                ]),
              ),
            ),
          );
        });
  }
}
