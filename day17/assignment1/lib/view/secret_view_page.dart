import 'package:assignment1/controller/secretcontroller.dart';
import 'package:assignment1/model/secret.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SecretViewPage extends GetView<Secretcontroller> {
  const SecretViewPage({super.key});
  static const route = '/secret';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
          child: Obx(() => ListView.builder(
              itemCount: controller.secrets.length,
              itemBuilder: (context, index) {
                return Text(controller.secrets[index].secret);
              }))),
    );
  }
}
