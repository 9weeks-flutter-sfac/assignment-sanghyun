import 'package:assignment2/controller/login_page_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginPage extends GetView<LoginPageController> {
  const LoginPage({super.key});
  static const route = '/login';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextField(
            controller: controller.idcontroller,
          ),
          TextField(
            controller: controller.pwcontroller,
          ),
          ElevatedButton(
              onPressed: () {
                controller.login();
              },
              child: Text('로그인하기'))
        ],
      )),
    );
  }
}
