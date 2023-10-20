import 'package:assignment1/view/login_page.dart';
import 'package:assignment1/view/main_page.dart';
import 'package:assignment1/view/secret_view_page.dart';
import 'package:assignment1/view/secret_write_page.dart';
import 'package:assignment1/view/signup_page.dart';
import 'package:get/get.dart';

class AppPages {
  static final pages = [
    GetPage(name: MainPage.route, page: () => MainPage()),
    GetPage(name: LoginPage.route, page: () => LoginPage()),
    GetPage(name: SecretViewPage.route, page: () => SecretViewPage()),
    GetPage(name: SecretWritePage.route, page: () => SecretWritePage()),
    GetPage(name: SignupPage.route, page: () => SignupPage()),
  ];
}
