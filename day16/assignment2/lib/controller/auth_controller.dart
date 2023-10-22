import 'package:assignment2/model/user.dart';
import 'package:assignment2/util/api_route.dart';
import 'package:assignment2/view/login_page.dart';
import 'package:assignment2/view/main_page.dart';
import 'package:assignment2/model/record.dart';
import 'package:get/get.dart';
import 'package:dio/dio.dart';

class AuthController extends GetxController {
  final Rxn<Record> _user = Rxn();
  RxnString _token = RxnString();
  Dio dio = Dio();

  String? get token => _token.value;
  Record? get user => _user.value;

  @override
  void onInit() {
    super.onInit();
    ever(_user, (value) {
      if (value != null) {
        Get.toNamed(MainPage.route);
        return;
      }
      Get.toNamed(LoginPage.route);
      return;
    });
  }

  login(String id, String pw) async {
    var res = await dio.post(ApiRoute.login, data: {
      'identity': id,
      'password': pw,
    });
    try {
      if (res.statusCode == 200) {
        var user = Record.fromMap(res.data['record']);
        _token(res.data['token']);
        _user(user);
      }
    } catch (e) {
      throw (e);
    }
  }

  logout() {
    _user.value = null;
  }
}
