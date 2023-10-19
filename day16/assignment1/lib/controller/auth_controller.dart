import 'package:assignment1/model/user.dart';
import 'package:assignment1/util/api_routes.dart';
import 'package:assignment1/view/login_page.dart';
import 'package:assignment1/view/main_page.dart';
import 'package:dio/dio.dart';
import 'package:get/get.dart';

class AuthController extends GetxController {
  final Rxn<User> _user = Rxn();
  Dio dio = Dio();

  User? get user => _user.value;

  login(String id, String pw) async {
    dio.options.baseUrl = 'http://52.79.115.43:8090';
    var res = await dio.post(ApiRoutes.authWithPassword, data: {
      'identity': id,
      'password': pw,
    });
    if (res.statusCode == 200) {
      print(res.data['record']);
      var user = User.fromMap(res.data['record']);
      _user(user);
    }
  }

  logout() {
    _user.value = null;
  }

  _handleAuthChanged(User? data) {
    if (data != null) {
      Get.toNamed(MainPage.route);
      return;
    }
    Get.toNamed(LoginPage.route);
    return;
  }

  @override
  void onInit() {
    super.onInit();
    ever(_user, _handleAuthChanged);
  }
}
