import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

Future<bool> alertexitapp() {
   Get.defaultDialog(
      title: "Alert",
      middleText: "Are you sure You want to exit the app",
      actions: [
        ElevatedButton(
            onPressed: () {
              exit(0);
            },
            child: const Text("confirm")),
        ElevatedButton(
            onPressed: () {
              Get.back();
            },
            child:const Text("cancel"))
      ]);
  return Future.value(true);
}
