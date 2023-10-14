import 'dart:async';

import 'package:get/get.dart';

class Coincontroller extends GetxController {
  RxInt coin = 0.obs;

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    Timer.periodic(Duration(seconds: 1), (timer) {
      coin++;
    });
    ever(coin, (_) {
      if (coin % 10 == 0 && coin != 0) {
        Get.snackbar('${coin.value}달성', '축하');
      }
    });
  }
}
