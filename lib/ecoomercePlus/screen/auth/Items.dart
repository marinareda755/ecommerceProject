import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../widget/CustomAppbar.dart';
import '../../widget/Home/Customappbar.dart';
import '../item/ListCategories.dart';
import 'DetailsItem.dart';

class Items extends StatelessWidget {
  const Items({super.key});

  @override
  Widget build(BuildContext context) {
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
          ), InkWell(
            onTap:(){} ,
            child: Container(
              height: 70,
              child: ListView.builder(
                itemCount: 6,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, i) {
                  return Container(
                    margin: EdgeInsets.all(10),
                    child: Column(
                      children: [

                        Container(


                    padding: EdgeInsets.only(right: 10 , left: 10 , bottom: 5),

                          decoration:  BoxDecoration(
                        border: Border(
                            bottom: BorderSide(
                                width: 3, color: Colors.red))),

                          child: Text(
                            'bages',
                            style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),
                          ),
                        ),

                      ],
                    ),


                  );



                },
              ),

            ),
          ),
            SizedBox(height: 10,),
            GridView .builder(
              itemCount: 4,
              itemBuilder: (context,i){
                return InkWell(
                  onTap: (){
                    Get.to(DetailsItem());
                  },
                  child: Card(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          color: Colors.grey[200],
                          child: Image.asset('assets/Imagesprofile.jpg',height: 100,width: 300,fit: BoxFit.fill,)
                          ,
                        ),
                        Text('Items[i][title]',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                        Text('Items[i][subtitle]',style: TextStyle(fontSize: 10,color: Colors.grey),),
                        Row(
                          children: [
                            Text('200\$',style: TextStyle(fontSize: 15,color: Colors.red[400]),),
                            IconButton(onPressed: (){}, icon: Icon(Icons.favorite_border

                            ))
                          ],
                        )
                      ],
                    ),
                  ),
                );
              },
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              gridDelegate:
              SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount:2 ),




            )
          ],
        ),
      ),
    );
  }
}
