import 'package:assignment1/Controller/app_setting_controller.dart';
import 'package:assignment1/View/coinPage.dart';
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
        initialBinding: BindingsBuilder(() {
          Get.put(AppSettingController());
        }),
        home: CoinPage());
  }
}
