import 'package:assignment1/controller/authcontroller.dart';
import 'package:assignment1/view/secret_view_page.dart';
import 'package:assignment1/view/secret_write_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MainPage extends GetView<AuthController> {
  const MainPage({super.key});
  static const route = '/main';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
                onPressed: () {
                  Get.toNamed(SecretViewPage.route);
                },
                child: Text('비밀보기')),
            TextButton(
                onPressed: () {
                  Get.toNamed(SecretWritePage.route);
                },
                child: Text('비밀쓰기')),
            TextButton(
                onPressed: () {
                  controller.logout();
                },
                child: Text('로그아웃')),
          ],
        ),
      )),
    );
  }
}
