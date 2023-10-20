import 'package:assignment1/controller/uploadcontroller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SecretWritePage extends GetView<UploadController> {
  const SecretWritePage({super.key});
  static const route = '/upload';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
          child: Column(
        children: [
          TextField(
            controller: controller.inputController,
          ),
          TextButton(
              onPressed: () {
                controller.upload();
              },
              child: Text('업로드'))
        ],
      )),
    );
  }
}
