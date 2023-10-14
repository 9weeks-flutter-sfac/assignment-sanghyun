// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:get/state_manager.dart';

class AppSettingController extends GetxController {
  RxBool isSoundOn = false.obs;
  RxBool isNotificationOn = false.obs;
  RxString appVersion = ''.obs;
  RxString appName = ''.obs;
  RxString appAuthor = ''.obs;
  RxString appPackageName = ''.obs;
  Rxn<DateTime> lastUpdated = Rxn();

  // RxList<String> coin = RxList<String>();

  // @override
  // void onInit() {
  //   super.onInit();

  //   ever(coin, (newValue) {
  //     print(newValue);
  //     print("변경감지 : ${coin.length}");
  //   });
  //   print('[GetX] 생성됨');
}
