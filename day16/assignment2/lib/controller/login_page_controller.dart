import 'package:assignment2/controller/auth_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginPageController extends GetxController {
  var idcontroller = TextEditingController();
  var pwcontroller = TextEditingController();

  login() {
    Get.find<AuthController>().login(idcontroller.text, pwcontroller.text);
  }
}
