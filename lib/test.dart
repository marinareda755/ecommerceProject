import 'package:ecommerceproject/core/functions/checkinternet.dart';
import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';

class Test extends StatefulWidget {
  const Test({super.key});

  @override
  State<Test> createState() => _TestState();
}

class _TestState extends State<Test> {
  var res;
  initData() async {
    res=await checkInternet();
    print(res);
  }
  @override
  void initState() {
   // initData();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Test'),),
      body: Container(
        padding: EdgeInsets.all(20),
        child: ListView(
          children: [
            OtpTextField(
              fieldWidth: 50,
              borderRadius: BorderRadius.circular(20),
              numberOfFields: 5,
              borderColor: Color(0xFF512DA8),
              //set to true to show as box or false to show as dash
              showFieldAsBox: true,
              //runs when a code is typed in
              onCodeChanged: (String code) {
                //handle validation or checks here
              },
              //runs when every textfield is filled
              onSubmit: (String verificationCode){
                showDialog(
                    context: context,
                    builder: (context){
                      return AlertDialog(
                        title: Text("Verification Code"),
                        content: Text('Code entered is $verificationCode'),
                      );
                    }
                );
              }, // end onSubmit
            ),
            
          ],
        ),
      ),
    );
  }
}
