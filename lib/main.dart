import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/routs.dart';
import 'package:getx/view/screen/bon.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      locale: const Locale("ar"),
      themeMode: ThemeMode.dark,
      darkTheme: ThemeData(
          colorScheme: ColorScheme.dark(
              secondary: const Color.fromARGB(255, 144, 144, 144),
              // background: const Color(0xFF17203A).withOpacity(0.8),
              background: Color.fromRGBO(48, 49, 78, 0),
              // primary: const Color.fromARGB(255, 77, 77, 77),
              primary: const Color.fromRGBO(62, 65, 98,0),
              tertiary: const Color.fromARGB(255, 220, 220, 220)),
          fontFamily: "Tajawal",
          textTheme: TextTheme(
              displayMedium: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 18,
                  color: Colors.grey.shade500),
              displayLarge: TextStyle(
                color: const Color.fromARGB(255, 223, 223, 223).withOpacity(0.9),
                fontWeight: FontWeight.w600,
                fontSize: 24,
              ),
              bodyMedium: const TextStyle(
                  fontSize: 16, color: Color.fromARGB(255, 209, 209, 209)))),
      theme: ThemeData(
          colorScheme: ColorScheme.light(
              secondary: const Color.fromARGB(255, 104, 104, 104),
              tertiary: Colors.black,
              primary: Colors.grey.shade500,
              background: Colors.grey.shade200),
          fontFamily: "Tajawal",
          textTheme: TextTheme(
              displayMedium: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 18,
                  color: Colors.grey.shade500),
              displayLarge: const TextStyle(
                color: Color.fromARGB(255, 42, 42, 42),
                fontWeight: FontWeight.bold,
                fontSize: 24,
              ),
              bodyMedium: const TextStyle(
                  fontSize: 16, color: Color.fromARGB(255, 108, 106, 106)))),
      home: const BottonNavWithAnimatedIcons(),
      getPages: routs,
      // getPages: routs,
    );
  }
}
