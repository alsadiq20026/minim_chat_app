import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Chatcard extends StatelessWidget {
  const Chatcard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        InkWell(
          onTap: () {
            Get.toNamed("/chat");
          },
          child: Container(
              padding: const EdgeInsets.only(top: 6, right: 8),
              height: 120,
              decoration: BoxDecoration(
                  border: Border(
                      bottom: BorderSide(
                width: 2,
                color: const Color.fromARGB(255, 0, 0, 0).withOpacity(0.1),
              ))),
              child: Row(
                children: [
                  ClipRRect(
                      borderRadius: BorderRadius.circular(100),
                      child: Image.asset(
                        "assets/images/person6.jpg",
                        width: 80,
                        height: 80,
                        fit: BoxFit.fill,
                      )),
                  Container(
                    width: 320,
                    child: ListTile(
                      contentPadding: EdgeInsets.all(8),
                      title: Text("الرفاعي"),
                      subtitle: Text("السلام عليكم"),
                      trailing: Text("أمس"),
                    ),
                  ),
                ],
              )),
        ),
      ],
    );
  }
}
