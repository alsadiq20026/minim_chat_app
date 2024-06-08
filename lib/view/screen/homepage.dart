import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/controller/home_controller.dart';

class Homepage extends StatelessWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(HomeControllerImp());
    return Scaffold(
      appBar: AppBar(
        titleTextStyle: Theme.of(context).textTheme.displayLarge,
        title: GetBuilder<HomeControllerImp>(
            builder: (controller) => controller.seleted == 0
                ? const Text("الدردشات")
                : const Text("الاعدادات")),
        iconTheme: IconThemeData(color: Theme.of(context).colorScheme.tertiary),
        elevation: 0.0,
        backgroundColor: Theme.of(context).colorScheme.background,
      ),
      backgroundColor: Theme.of(context).colorScheme.background,
      drawer: GetBuilder<HomeControllerImp>(
          builder: (controller) => Drawer(
                child: Container(
                    margin: const EdgeInsets.symmetric(vertical: 0),
                    padding: const EdgeInsets.all(15),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Expanded(
                                child: ListTile(
                              trailing: InkWell(
                                onTap: () {
                                  Get.isDarkMode
                                      ? Get.changeThemeMode(ThemeMode.light)
                                      : Get.changeThemeMode(ThemeMode.dark);
                                },
                                child: Get.isDarkMode
                                    ? const Icon(Icons.dark_mode)
                                    : const Icon(Icons.light_mode),
                              ),
                              title: const Text("username!"),
                              subtitle: const Text("email!"),
                            ))
                          ],
                        ),
                        ListTile(
                          titleTextStyle:
                              Theme.of(context).textTheme.displayMedium,
                          shape: controller.seleted == 0
                              ? RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(12),
                                  side: BorderSide(
                                      width: 0.80,
                                      color: Theme.of(context)
                                          .colorScheme
                                          .secondary))
                              : null,
                          title: const Text("الدردشات"),
                          leading: const Icon(Icons.wechat_rounded),
                          onTap: () {
                            Navigator.pop(context);
                            controller.chs(0);
                          },
                        ),
                        ListTile(
                          titleTextStyle:
                              Theme.of(context).textTheme.displayMedium,
                          shape: controller.seleted == 1
                              ? RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(12),
                                  side: BorderSide(
                                      width: 0.80,
                                      color: Theme.of(context)
                                          .colorScheme
                                          .secondary))
                              : null,
                          title: const Text("الاعدادات"),
                          leading: const Icon(Icons.settings),
                          onTap: () {
                            Navigator.pop(context);
                            controller.chs(1);
                          },
                        ),
                        const SizedBox(
                          height: 570,
                        ),
                        ListTile(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(22)),
                          title: const Text("تسجيل الخروج"),
                          leading: const Icon(Icons.logout),
                          onTap: () {
                            Get.offNamedUntil("/login", (route) => false);
                          },
                        ),
                      ],
                    )),
              )),
      body: GetBuilder<HomeControllerImp>(
        builder: (controller) => controller.pages[controller.seleted],
      ),
    );
  }
}
