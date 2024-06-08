import 'package:flutter/material.dart';
import 'package:get/get.dart';
// import 'package:firebase_messaging/firebase_messaging.dart';

abstract class LoginController extends GetxController {
  login();
  goToSignup();
  goToforgetpassword();
}

class LoginControllerImp extends LoginController {
  GlobalKey<FormState> formstatelogin = GlobalKey<FormState>();
  late TextEditingController email;
  late TextEditingController password;
  bool isshowpassword = true;
  // Statusrequest statusrequest = Statusrequest.none;
  // Logindata logindata = Logindata(Get.find());
  // Myservice myservice = Get.find();
  showpassword() {
    isshowpassword = isshowpassword == true ? false : true;
    update();
  }

  @override
  login() async {
    if (formstatelogin.currentState!.validate()) {
      // statusrequest = Statusrequest.loading;
      // var response = await logindata.postdata(email.text, password.text);
      // statusrequest = handlingdata(response);
      // if (Statusrequest.success == statusrequest) {
      //   if (response['status'] == "success") {
      //     myservice.pharedpreferences.setString("id", response['data']['_id']);
      //     myservice.pharedpreferences
      //         .setString("name", response['data']['name']);
      //     myservice.pharedpreferences
      //         .setString("email", response['data']['email']);
      //     myservice.pharedpreferences
      //         .setString("phone", response['data']['phone']);
      //     myservice.pharedpreferences.setString("token", response['token']);
      //     myservice.pharedpreferences.setInt("step", 2);
      //     Get.offNamedUntil("/home", (route) => false);
      //     Get.delete<LoginControllerImp>();
      //   } else {}
      // } else {
      //   statusrequest = Statusrequest.failure;
      //   update();
      //   return Get.defaultDialog(title: "Email Is Not Found");
      // }
    } else {}
    update();
  }

  @override
  goToSignup() {
    Get.offNamed("/signup");
  }

  @override
  goToforgetpassword() {
    Get.offNamedUntil("/forgetpassword", (route) => true);
    Get.delete<LoginControllerImp>();
  }

  @override
  void onInit() {
    // FirebaseMessaging.instance.getToken().then((value) {
    //   print(value);

    // });
    email = TextEditingController();
    password = TextEditingController();
    super.onInit();
  }

  @override
  void dispose() {
    email.dispose();
    password.dispose();
    super.dispose();
  }
}
