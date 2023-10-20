import 'package:assignment1/controller/authcontroller.dart';
import 'package:assignment1/model/item.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignupController extends GetxController {
  var usernamecontroller = TextEditingController();
  var emailcontroller = TextEditingController();
  var pwcontroller = TextEditingController();
  var pw2controller = TextEditingController();

  signup() {
    Get.find<AuthController>().signup(
      usernamecontroller.text,
      emailcontroller.text,
      pwcontroller.text,
      pw2controller.text,
    );
  }
}
