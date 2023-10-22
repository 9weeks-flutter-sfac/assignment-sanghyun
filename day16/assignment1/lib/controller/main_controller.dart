import 'package:assignment1/controller/auth_controller.dart';
import 'package:assignment1/util/api_routes.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MainController extends GetxController {
  var authController = Get.find<AuthController>();
  var pageController = PageController();
  RxInt curPage = 0.obs;
  Dio dio = Dio();

  onPageTapped(int v) {
    pageController.jumpToPage(v);
    curPage(v);
  }

  logout() {
    Get.find<AuthController>().logout();
  }

  // readDocuments() async {
  //  var res =await dio.get(ApiRoutes.documenturl,
  //  options: Options(headers: {
  //   'Authorization' = authController.v
  //  }));
  // }
}
