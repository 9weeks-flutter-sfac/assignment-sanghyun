import 'package:assignment1/controller/authcontroller.dart';
import 'package:assignment1/controller/logincontroller.dart';
import 'package:assignment1/controller/secretcontroller.dart';
import 'package:assignment1/controller/signupcontroller.dart';
import 'package:assignment1/controller/uploadcontroller.dart';
import 'package:assignment1/util/pages.dart';
import 'package:assignment1/view/login_page.dart';
import 'package:assignment1/view/main_page.dart';
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
      theme: ThemeData.dark(),
      getPages: AppPages.pages,
      initialBinding: BindingsBuilder(() {
        Get.put(AuthController());
        Get.lazyPut(() => LoginController());
        // Get.lazyPut(() => Secretcontroller());
        Get.put(Secretcontroller(), permanent: true);
        Get.put(UploadController(), permanent: true);
        Get.lazyPut(() => SignupController());
      }),
      // home: LoginPage()
      initialRoute: '/login',
    );
  }
}
