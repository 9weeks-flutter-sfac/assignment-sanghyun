// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/widgets.dart';
import 'package:get/state_manager.dart';

class AppSettingController extends GetxController {
  var AppAuthorTextController = TextEditingController();

  RxBool isSoundOn = false.obs;
  RxBool isNotificationOn = false.obs;
  RxString appVersion = ''.obs;
  RxString appName = '앱이름'.obs;
  RxString appAuthor = ''.obs;
  RxString appPackageName = ''.obs;
  Rxn<DateTime> lastUpdated = Rxn<DateTime>();
}
