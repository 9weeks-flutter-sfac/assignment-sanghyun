import 'package:assignment1/Controller/app_setting_controller.dart';
import 'package:assignment1/Controller/coin_controllet.dart';
import 'package:assignment1/View/shoppage.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

class CoinPage extends StatelessWidget {
  const CoinPage({super.key});

  @override
  Widget build(BuildContext context) {
    var coinController = Get.put(Coincontroller());
    var settingController = Get.find<AppSettingController>();
    return Scaffold(
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Obx(() => Text('Current Coin ${coinController.coin.value}')),
          Icon(
            FontAwesomeIcons.bitcoin,
            size: 96.0,
            color: Colors.yellow.shade700,
          ),
          TextButton(
              onPressed: () {
                Get.to(() => ShopPage());
              },
              child: Text('상점으로 이동')),
          TextField(
            controller: settingController.AppAuthorTextController,
            onSubmitted: (value) {
              // settingController.appAuthor = value.obs;
              settingController.appAuthor.value = value;
            },
          ),
          Obx(() => Text('여기뒤로' + settingController.appAuthor.value))
        ],
      )),
    );
  }
}
