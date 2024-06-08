import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/controller/auth/signup_controller.dart';
import 'package:getx/view/widget/Textformfiled.dart';

class Signup extends StatelessWidget {
  const Signup({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(SignUpConrollerImp());
    return Scaffold(
        backgroundColor: Theme.of(context).colorScheme.background,
        body: GetBuilder<SignUpConrollerImp>(
          builder: (controller) => ListView(
            children: [
              Form(
                  key: controller.formstatesignup,
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
                          "   إنشاء حساب",
                          style: Theme.of(context).textTheme.displayMedium,
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        Textformfiled(
                          validator: (val) {
                            if (val!.isEmpty) {
                              return "لا يمكن ان يكون هذا الحقل فارغاً ";
                            }
                            return null;
                          },
                          icondata: Icons.person,
                          hinttext: " اسم المستخدم",
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        Textformfiled(
                          validator: (val) {
                            if (val!.isEmpty) {
                              return "لا يمكن ان يكون هذا الحقل فارغاً ";
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
                          ontap: () {
                            controller.showpassword();
                          },
                          obscuretext: controller.isshowpassword,
                          hinttext: " كلمة المرور",
                        ),
                        SizedBox(
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
                            if (val != controller.password.toString()) {
                              return "كلمة المرور غير متطابقة";
                            }
                            return null;
                          },
                          ontap: () {
                            controller.showpassword();
                          },
                          obscuretext: controller.isshowpassword,
                          hinttext: "تأكيد كلمة المرور",
                        ),
                        const SizedBox(
                          height: 50,
                        ),
                        Center(
                          child: MaterialButton(
                            onPressed: () {},
                            shape: RoundedRectangleBorder(
                                borderRadius:
                                    const BorderRadius.all(Radius.circular(18)),
                                side: BorderSide(
                                  color: Theme.of(context).colorScheme.primary,
                                )),
                            minWidth: 350,
                            child: Text(
                              " إنشاء حساب",
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
                              " لديك حساب؟  ",
                              style: Theme.of(context).textTheme.bodyMedium,
                            ),
                            InkWell(
                                onTap: () {
                                  Get.offNamedUntil("/", (route) => false);
                                },
                                child: const Text(" تسجيل الدخول"))
                          ],
                        )
                      ],
                    ),
                  )),
            ],
          ),
        ));
  }
}
