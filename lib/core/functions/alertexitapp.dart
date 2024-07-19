import 'dart:async';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

Future<bool>alertExitApp(){
  Get.defaultDialog(
    title: 'exit',
    middleText: 'Are You Sure ?',
    actions: [
      ElevatedButton(

          onPressed: (){
        exit(0);
      }, child: Text('yes')),
      ElevatedButton(onPressed: (){
        Get.back();
      }, child: Text('cancel')),
    ]
  );
  return Future.value(true);
}