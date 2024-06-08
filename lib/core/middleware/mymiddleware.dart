// ignore_for_file: body_might_complete_normally_nullable

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/core/services/services.dart';

class Mymiddelware extends GetMiddleware {
  @override
  int? get priority => 1;
  Myservice myservice = Get.find();

  @override
  RouteSettings? redirect(String? route) {
    // if (myservice.pharedpreferences.getInt("step") == 2) {
    //   return const RouteSettings(name: "/Homescreen");
    // }
    // if (myservice.pharedpreferences.getInt("step") == 1)
    if(true)
     {
      return const RouteSettings(name: "/login");
    }
  }
}
