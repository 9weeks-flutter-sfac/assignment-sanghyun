import 'package:assignment1/controller/signupcontroller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignupPage extends GetView<SignupController> {
  const SignupPage({super.key});
  static const route = '/signup';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          children: [
            TextField(
              controller: controller.usernamecontroller,
              decoration: InputDecoration(hintText: '이름'),
            ),
            TextField(
              controller: controller.emailcontroller,
              decoration: InputDecoration(hintText: '이메일'),
            ),
            TextField(
              controller: controller.pwcontroller,
              decoration: InputDecoration(hintText: '비밀번호'),
            ),
            TextField(
              controller: controller.pw2controller,
              decoration: InputDecoration(hintText: '비밀번호확인'),
            ),
            TextButton(
                onPressed: () {
                  controller.signup();
                },
                child: Text('가입하기'))
          ],
        ),
      ),
    );
  }
}
