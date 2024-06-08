import 'package:flutter/material.dart';
import 'package:getx/view/widget/chatcard.dart';

class Chats extends StatelessWidget {
  const Chats({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromRGBO(48, 49, 78, 0.3),
        appBar: AppBar(
          actions: [
            const SizedBox(
              width: 2,
            ),
            IconButton(
                onPressed: () {}, icon: const Icon(Icons.search_rounded)),
            IconButton(
                onPressed: () {}, icon: const Icon(Icons.more_vert_rounded)),
          ],
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          elevation: 0.0,
          backgroundColor: const Color.fromRGBO(62, 65, 98, 0.2),
          title: Text(
            "الرسائل",
            style: Theme.of(context).textTheme.displayLarge,
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          backgroundColor: const Color.fromRGBO(62, 65, 98, 0.3),
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(17),
                  bottomRight: Radius.circular(17))),
          elevation: 20,
          child: const Icon(
            Icons.add,
            color: Colors.white,
          ),
        ),
        body: const Chatcard());
  }
}
