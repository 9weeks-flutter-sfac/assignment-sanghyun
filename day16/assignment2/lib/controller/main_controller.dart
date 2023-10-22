import 'package:assignment2/controller/auth_controller.dart';
import 'package:assignment2/model/document.dart';
import 'package:assignment2/util/api_route.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:dio/dio.dart';

class MainController extends GetxController {
  var authcontroller = Get.find<AuthController>();
  var pageController = PageController();
  RxInt curPage = 0.obs;
  Dio dio = Dio();
  Rxn<List<Document>> _document = Rxn();

  List<Document>? get document => _document.value;

  onPageTapped(int v) {
    pageController.jumpToPage(v);
    curPage(v);
  }

  logout() {
    authcontroller.logout();
  }

  readDocuments() async {
    var res = await dio.get(ApiRoute.documents,
        options: Options(headers: {'Authorization': authcontroller.token}));
    if (res.statusCode == 200) {
      var result = List<Map<String, dynamic>>.from(res.data['items']);
      var data = result.map((e) => Document.fromMap(e)).toList();
      print(data.first.attachment);
      _document(data);
      print(_document.value!.first.collectionName);
    }
  }
}
