import 'package:ecommerceproject/view/widget/language/custombuttonlang.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ContactUs extends StatefulWidget {
  const ContactUs({super.key});

  @override
  State<ContactUs> createState() => _ContactUsState();
}

class _ContactUsState extends State<ContactUs> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('63'.tr),),
      body: Container(
        padding: EdgeInsets.all(20),
        child:Column(
          children: [
            Text('66'.tr,style: TextStyle(fontSize: 16),),
            SizedBox(height: 80,),
          TextField(
            decoration: InputDecoration(
                border: OutlineInputBorder(),
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.red),
                    borderRadius: BorderRadius.circular(40)
                ),
                enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.green)
                ),
                disabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.yellow)
                )

            ),

              keyboardType: TextInputType.text,
              maxLines: 3,
              minLines: 1,



            ),
            SizedBox(height: 30,),
           CustomButtonLang(textbutton: '67'.tr,onPressed: (){},)
          ],
        ),
      ),
    );
  }
}
