import 'package:assignment2/view/login_page.dart';
import 'package:assignment2/view/main_page.dart';
import 'package:get/get.dart';

class Pages {
  static final pages = [
    GetPage(name: MainPage.route, page: () => MainPage()),
    GetPage(name: LoginPage.route, page: () => LoginPage())
  ];
}
