
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../controller/CategoriesController.dart';
import '../../../controller/ItemController.dart';
import 'DetailsItem.dart';
import 'Items.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final ItemController itemController = Get.put(ItemController());
    final CategoryController categoryController = Get.put(CategoryController());
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Obx(() {
        if (itemController.items.isEmpty) {
          return Center(child: CircularProgressIndicator());
        }
        return Container(
          child: ListView(
            children: [
              Container(
                margin: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                child: Stack(
                  children: [
                    Container(
                      alignment: Alignment.center,
                      child: ListTile(
                        title: Text(
                          'A summer Surprise',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                        subtitle: Text(
                          'Cashback 30%',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 30,
                          ),
                        ),
                      ),
                      height: 150,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.red,
                      ),
                    ),
                    Positioned(
                      top: -20,
                      right: -20,
                      child: Container(
                        height: 160,
                        width: 160,
                        decoration: BoxDecoration(
                          color: Colors.red[600],
                          borderRadius: BorderRadius.circular(160),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10),
              Text(
                'Categories',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
              ),
              Container(
                height: 150,
                child: Obx(() {
                  return ListView.builder(
                    itemCount: categoryController.categories.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      final category = categoryController.categories[index];
                      return GestureDetector(
                        onTap: () {
                          Get.to(Items());
                        },
                        child: Container(
                          margin: EdgeInsets.all(10),
                          child: Column(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  color: Colors.red[50],
                                  borderRadius: BorderRadius.circular(100),
                                ),
                                child: Image.asset(
                                  category.imageName,
                                  width:60,
                                  height: 60,
                                  fit: BoxFit.cover,
                                ),
                                padding: EdgeInsets.all(10),
                              ),
                              Text(
                                category.title,
                                style: TextStyle(fontSize: 20),
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  );
                }),
              ),
              Text(
                'Best Selling',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: Colors.red,
                ),
              ),
              SizedBox(height: 10),
              GridView.builder(
                itemCount: itemController.items.length,
                itemBuilder: (context, i) {
                  return InkWell(
                    onTap: () {
                      Get.to(DetailsItem(item: itemController.items[i]));
                    },
                    child: Container(

                      child: Card(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Expanded(
                              child: Center(
                                child: Container(

                                  color: Colors.grey[200],
                                  child: Image.network(
                                    itemController.items[i].image,
                                    width: MediaQuery.of(context).size.width / 2.8,
                                    height: MediaQuery.of(context).size.width / 2.8,
                                    fit: BoxFit.fill,
                                    errorBuilder: (BuildContext context, Object exception,
                                      StackTrace? stackTrace) {
                                    return  Image.asset('assets/images/profile.jpg',  width: MediaQuery.of(context).size.width / 2.8,
                                      height: MediaQuery.of(context).size.width / 2.8,
                                      fit: BoxFit.fill,);
                                  },
                                  ),
                                ),
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
        );
      }),
    );
  }
}