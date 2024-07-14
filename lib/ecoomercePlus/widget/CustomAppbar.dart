import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomAppbar extends StatelessWidget {
  final String titleappbar;
  final void Function()? onPressedIconFavorite;
  final void Function()? onPressedSearch;
  final void Function(String)? onChanged;
  final TextEditingController mycontroller;
  final IconData iconData ;
  const CustomAppbar({super.key, required this.titleappbar,
    this.onPressedSearch,
    required this.onPressedIconFavorite,
    this.onChanged,
    required this.mycontroller,   this.iconData =   Icons.favorite_border_outlined});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
            body:Container(
              margin: EdgeInsets.only(top: 10),
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: Row(
                children: [
                  Expanded(
                    child: TextFormField(
                      controller: mycontroller,
                      onChanged: onChanged,
                      decoration: InputDecoration(
                          prefixIcon: IconButton(
                              icon: Icon(Icons.search), onPressed: onPressedSearch),
                          hintText: titleappbar,
                          hintStyle: TextStyle(fontSize: 18),
                          border: OutlineInputBorder(
                              borderSide: BorderSide.none,
                              borderRadius: BorderRadius.circular(10)),
                          filled: true,
                          fillColor: Colors.grey[200]),
                    )),
                  SizedBox(width: 5),
                  Container(
                    width: 60,
                    padding: EdgeInsets.symmetric(vertical: 8),
                    child: IconButton(
                      onPressed: onPressedIconFavorite,
                      icon: Icon(Icons.notification_add_outlined, size: 30, color: Colors.grey),
                    ),
                  ),
                ],
              ),
            ),
    );
  }
}
