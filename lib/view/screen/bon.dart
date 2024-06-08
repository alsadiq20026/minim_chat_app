import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/controller/homescreen_controller.dart';
import 'package:getx/view/screen/rive.dart';
import 'package:rive/rive.dart';

const Color bottonNavBgColor = Color(0xFF17203A);

class BottonNavWithAnimatedIcons extends StatelessWidget {
  const BottonNavWithAnimatedIcons({super.key});

  // List<SMIBool> riveIconInputs = [];
  // List<StateMachineController?> controllers = [];
  // int selctedNavIndex = 0;
  // List<String> pages = ["Chat", "Profile", "Setting"];

  // void animateTheIcon(int index) {
  //   riveIconInputs[index].change(true);
  //   Future.delayed(
  //     const Duration(seconds: 1),
  //     () {
  //       riveIconInputs[index].change(false);
  //     },
  //   );
  // }

  // void riveOnInIt(Artboard artboard, {required String stateMachineName}) {
  //   StateMachineController? controller =
  //       StateMachineController.fromArtboard(artboard, stateMachineName);

  //   artboard.addController(controller!);
  //   controllers.add(controller);

  //   riveIconInputs.add(controller.findInput<bool>('active') as SMIBool);
  // }

  // @override
  // void dispose() {
  //   for (var controller in controllers) {
  //     controller?.dispose();
  //   }
  //   super.dispose();
  // }

  @override
  Widget build(BuildContext context) {
    Get.put(HomeScreenControllerImp());
    return Scaffold(
      backgroundColor: Color.fromRGBO(48, 49, 78, 0.3),
      bottomNavigationBar: SafeArea(
        child: Container(
            padding: const EdgeInsets.all(12),
            margin: const EdgeInsets.symmetric(horizontal: 0),
            decoration: BoxDecoration(
              color: const Color.fromRGBO(62, 65, 98, 0.3),
              borderRadius: const BorderRadius.all(Radius.circular(22)),
              boxShadow: [
                BoxShadow(
                  color: bottonNavBgColor.withOpacity(0.3),
                  offset: const Offset(0, 20),
                  blurRadius: 20,
                ),
              ],
            ),
            child: GetBuilder<HomeScreenControllerImp>(
                init: HomeScreenControllerImp(),
                builder: (controller) => Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: List.generate(
                        bottomNavItems.length,
                        (index) {
                          final riveIcon = bottomNavItems[index];
                          return GestureDetector(
                            onTap: () {
                              controller.animateTheIcon(index);
                              controller.selctedNavIndex = index;
                            },
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                AnimatedBar(
                                    isActive:
                                        controller.selctedNavIndex == index),
                                SizedBox(
                                  height: 36,
                                  width: 36,
                                  child: Opacity(
                                    opacity: controller.selctedNavIndex == index
                                        ? 1
                                        : 0.5,
                                    child: RiveAnimation.asset(
                                      riveIcon.src,
                                      artboard: riveIcon.artboard,
                                      onInit: (artboard) {
                                        controller.riveOnInIt(artboard,
                                            stateMachineName:
                                                riveIcon.stateMachineName);
                                      },
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          );
                        },
                      ),
                    ))),
      ),
      body: GetBuilder<HomeScreenControllerImp>(
        builder: (controller) => controller.page[controller.selected],
      ),
    );
  }
}

class AnimatedBar extends StatelessWidget {
  const AnimatedBar({
    super.key,
    required this.isActive,
  });

  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 200),
      margin: const EdgeInsets.only(bottom: 2),
      height: 4,
      width: isActive ? 20 : 0,
      decoration: const BoxDecoration(
        color: Color(0xFF81B4FF),
        borderRadius: BorderRadius.all(Radius.circular(12)),
      ),
    );
  }
}
