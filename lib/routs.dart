import 'package:get/get.dart';
import 'package:getx/view/screen/chat.dart';
import 'package:getx/view/screen/chats.dart';
import 'package:getx/view/screen/homepage.dart';
import 'package:getx/view/screen/login.dart';
import 'package:getx/view/screen/signup.dart';

List<GetPage<dynamic>>? routs = [
  GetPage(
    name: "/",
    page: () => const Login(),
  ),
  GetPage(
    name: "/signup",
    page: () => const Signup(),
  ),
  GetPage(
    name: "/homepage",
    page: () => const Homepage(),
  ),
  GetPage(
    name: "/chats",
    page: () => const Chats(),
  ),
  GetPage(
    name: "/chat",
    page: () => const Chat(),
  ),
];
