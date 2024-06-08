import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/view/screen/chats.dart';
import 'package:getx/view/screen/settings.dart';

abstract class HomeController extends GetxController {
  chs(int ind);
}

class HomeControllerImp extends HomeController {
  int seleted = 0;
  List<Widget> pages = [ const Chats(), const Settings()];

  @override
  chs(int ind) {
    seleted = ind;
    update();
  }
}
