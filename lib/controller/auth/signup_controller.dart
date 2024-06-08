import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class SignUpConroller extends GetxController {
  signup();
  goTologin();
}

class SignUpConrollerImp extends SignUpConroller {
  GlobalKey<FormState> formstatesignup = GlobalKey<FormState>();
  late TextEditingController email;
  late TextEditingController password;
  late TextEditingController phone;
  late TextEditingController name;
  bool isshowpassword = true;
  // Statusrequest statusrequest = Statusrequest.none;
  // Signupdate signupdate = Signupdate(Get.find());
  List data = [];
  showpassword() {
    isshowpassword = isshowpassword == true ? false : true;
    update();
  }

  @override
  signup() async {
    if (formstatesignup.currentState!.validate()) {
      //   statusrequest = Statusrequest.loading;
      //   update();
      //   var response = await signupdate.postdata(
      //       name.text.toString(),
      //       email.text.toString(),
      //       password.text.toString(),
      //       phone.text.toString());
      //   statusrequest = handlingdata(response);
      //   if (Statusrequest.success == statusrequest) {
      //     if (response['status'] == "success") {

      //       Get.toNamed("/verifycodesignup", arguments: {"email": email.text});
      //     } else {
      //       statusrequest = Statusrequest.failure;
      //       update();
      //       return Get.defaultDialog(title: "email or is allredy use");
      //     }
      //   } else {
      //   }
      //   update();
      // } else {
    }
    Get.delete<SignUpConrollerImp>();
  }

  @override
  goTologin() {
    Get.toNamed("/login");
  }

  @override
  void onInit() {
    email = TextEditingController();
    password = TextEditingController();
    phone = TextEditingController();
    name = TextEditingController();
    super.onInit();
  }

  @override
  void dispose() {
    email.dispose();
    password.dispose();
    phone.dispose();
    name.dispose();
    super.dispose();
  }
}
