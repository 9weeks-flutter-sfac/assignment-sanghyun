// ignore_for_file: non_constant_identifier_names

import 'package:assignment1/model/user_list.dart';
import 'package:assignment1/util/api_routes.dart';
import 'package:assignment1/view/main_page.dart';
import 'package:dio/dio.dart';
import 'package:get/get.dart';

class AuthController extends GetxController {
  final Rxn<UserList> _UserList = Rxn<UserList>();
  var dio = Dio();

  login(String id, String pw) async {
    var res =
        await dio.post(ApiRoutes.login, data: {'identity': id, 'password': pw});
    if (res.statusCode == 200) {
      var data = Map<String, dynamic>.from(res.data['record']);
      _UserList(UserList.fromMap(data));
      print(_UserList);
    }
  }

  _handleOnUserChanged(Value) {
    if (Value != null) {
      Get.toNamed(MainPage.route);
      return;
    }
    Get.toNamed('/login');
    return;
  }
}
