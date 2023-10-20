import 'package:assignment1/Controller/app_setting_controller.dart';
import 'package:assignment1/Controller/coin_controllet.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ShopPage extends StatelessWidget {
  const ShopPage({super.key});

  @override
  Widget build(BuildContext context) {
    var coinController = Get.find<Coincontroller>();
    var settingController = Get.find<AppSettingController>();
    return Scaffold(
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('상점'),
          Obx(
            () => Text('현재보유한코인 ${coinController.coin.value}'),
          ),
          TextButton(
              onPressed: () {
                coinController.coin.value = 0;
              },
              child: Text('초기화 하기')),
          TextButton(
              onPressed: () {
                Get.back();
              },
              child: Text('뒤로가기')),
          Obx(() => Text(settingController.appName.value))
        ],
      )),
    );
  }
}
