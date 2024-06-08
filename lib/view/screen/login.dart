import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/controller/auth/login_controller.dart';
import 'package:getx/view/widget/Textformfiled.dart';

class Login extends StatelessWidget {
  const Login({super.key});
  @override
  Widget build(BuildContext context) {
    Get.put(LoginControllerImp());
    return Scaffold(
        backgroundColor: Theme.of(context).colorScheme.background,
        body: GetBuilder<LoginControllerImp>(
            builder: (controller) => Form(
                key: controller.formstatelogin,
                child: Padding(
                  padding: const EdgeInsets.all(14.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Center(
                        child: Icon(
                          Icons.message_rounded,
                          size: 77,
                          color: Theme.of(context).colorScheme.primary,
                        ),
                      ),
                      const SizedBox(
                        height: 40,
                      ),
                      Text(
                        "سجّل الدخول الى حسابك",
                        style: Theme.of(context).textTheme.displayMedium,
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      Textformfiled(
                        validator: (val) {
                          if (val!.isEmpty) {
                            return "لا يمكن ان يكون هذا الحقل فارغاً";
                          }
                          return null;
                        },
                        icondata: Icons.email,
                        hinttext: "البريد الالكتروني",
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      Textformfiled(
                        icondata: controller.isshowpassword == true
                            ? Icons.lock_outline
                            : Icons.lock_open_sharp,
                        validator: (val) {
                          if (val!.isEmpty) {
                            return "لا يمكن ان يكون هذا الحقل فارغاً ";
                          }
                          return null;
                        },
                        obscuretext: controller.isshowpassword,
                        ontap: () {
                          controller.showpassword();
                        },
                        hinttext: " كلمة المرور",
                      ),
                      const SizedBox(
                        height: 50,
                      ),
                      Center(
                        child: MaterialButton(
                          onPressed: () {
                            Get.offNamedUntil("homepage", (route) => false);
                          },
                          shape: RoundedRectangleBorder(
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(18)),
                              side: BorderSide(
                                color: Theme.of(context).colorScheme.primary,
                              )),
                          minWidth: 350,
                          child: Text(
                            "تسجل الدخول",
                            style: Theme.of(context).textTheme.displayMedium,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      Row(
                        children: [
                          Text(
                            "ليس لديك حساب؟  ",
                            style: Theme.of(context).textTheme.bodyMedium,
                          ),
                          InkWell(
                              onTap: () {
                                Get.offNamedUntil("/signup", (route) => false);
                              },
                              child: const Text("إنشاء حساب"))
                        ],
                      )
                    ],
                  ),
                ))));
  }
}
