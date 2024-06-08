import 'package:rive/rive.dart';

List<SMIBool> riveIconInputs = [];
List<StateMachineController?> controllers = [];
int selctedNavIndex = 0;
void riveOnInIt(Artboard artboard, {required String stateMachineName}) {
  StateMachineController? controller =
      StateMachineController.fromArtboard(artboard, stateMachineName);

  artboard.addController(controller!);
  controllers.add(controller);

  riveIconInputs.add(controller.findInput<bool>('active') as SMIBool);

}
