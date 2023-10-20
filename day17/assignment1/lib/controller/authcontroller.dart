// ignore_for_file: non_constant_identifier_names

import 'dart:ffi';

import 'package:assignment1/model/item.dart';
import 'package:assignment1/model/user_list.dart';
import 'package:assignment1/util/api_routes.dart';
import 'package:assignment1/view/main_page.dart';
import 'package:dio/dio.dart';
import 'package:get/get.dart';

class AuthController extends GetxController {
  final Rxn<Item> _Item = Rxn<Item>();
  var dio = Dio();
  Item? get item => _Item.value;

  login(String id, String pw) async {
    var res =
        await dio.post(ApiRoutes.login, data: {'identity': id, 'password': pw});
    if (res.statusCode == 200) {
      var data = Map<String, dynamic>.from(res.data['record']);
      _Item(Item.fromMap(data));
    }
    if (res.statusCode == 400) {
      return;
    }
  }

  signup(
    String username,
    String email,
    String pw,
    String pw2,
  ) async {
    var res = await dio.post(ApiRoutes.signup, data: {
      'email': email,
      'password': pw,
      'passwordConfirm': pw2,
      'username': username
    });
    if (res.statusCode == 200) {
      return _Item(Item.fromMap(res.data));
    }
    if (res.statusCode == 400) {
      return null;
    }
  }

  logout() {
    _Item.value = null;
  }

  _handleOnUserChanged(Value) {
    if (Value != null) {
      Get.toNamed(MainPage.route);
      return;
    }
    Get.toNamed('/login');
    return;
  }

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    ever(_Item, _handleOnUserChanged);
  }
}
