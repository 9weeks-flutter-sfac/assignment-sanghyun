import 'dart:ui';

import 'package:assignment2/controller/auth_controller.dart';
import 'package:assignment2/controller/login_page_controller.dart';
import 'package:assignment2/controller/main_controller.dart';
import 'package:assignment2/util/pages.dart';
import 'package:assignment2/view/login_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      scrollBehavior: const MaterialScrollBehavior().copyWith(
        dragDevices: {PointerDeviceKind.mouse},
      ),
      getPages: Pages.pages,
      initialBinding: BindingsBuilder(() {
        Get.put(LoginPageController());
        Get.put(AuthController());
        Get.lazyPut(() => MainController());
      }),
      home: LoginPage(),
    );
  }
}
