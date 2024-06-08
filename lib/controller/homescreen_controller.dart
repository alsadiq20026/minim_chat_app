import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/view/screen/chats.dart';
import 'package:rive/rive.dart';

abstract class HomeScreenController extends GetxController {
  changeselected(int index);
}

class HomeScreenControllerImp extends HomeScreenController {
  int selected = 0;

  List<SMIBool> riveIconInputs = [];
  List<StateMachineController?> controllers = [];
  int selctedNavIndex = 0;
  List<String> pages = ["Chat", "Profile", "Setting"];

  void animateTheIcon(int index) {
    riveIconInputs[index].change(true);
    Future.delayed(
      const Duration(seconds: 1),
      () {
        riveIconInputs[index].change(false);
      },
    );
    update();
  }

  void riveOnInIt(Artboard artboard, {required String stateMachineName}) {
    StateMachineController? controller =
        StateMachineController.fromArtboard(artboard, stateMachineName);

    artboard.addController(controller!);
    controllers.add(controller);

    riveIconInputs.add(controller.findInput<bool>('active') as SMIBool);
    update();
  }

  @override
  void dispose() {
    for (var controller in controllers) {
      controller?.dispose();
    }
    super.dispose();
  }

  List<Widget> page = [
    const Chats(),
  ];

  @override
  changeselected(index) {
    selected = index;
    update([selected]);
  }

  @override
  void onInit() {
    selected;
    riveIconInputs;
    controllers;
    selctedNavIndex;
    super.onInit();
  }
}
