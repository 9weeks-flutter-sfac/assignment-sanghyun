import 'package:assignment1/controller/authcontroller.dart';
import 'package:assignment1/controller/logincontroller.dart';
import 'package:assignment1/model/login.dart';
import 'package:assignment1/view/signup_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginPage extends GetView<LoginController> {
  const LoginPage({super.key});
  static const route = '/login';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Icon(Icons.add),
          Text('비밀듣는 고양이'),
          TextField(
            controller: controller.idController,
          ),
          TextField(
            controller: controller.pwController,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton(
                  onPressed: () {
                    controller.login();
                  },
                  child: Text('로그인')),
              SizedBox(
                width: 36,
              ),
              TextButton(
                child: Text('회원가입'),
                onPressed: () {
                  Get.toNamed(SignupPage.route);
                },
              )
            ],
          )
        ]),
      )),
    );
  }
}
