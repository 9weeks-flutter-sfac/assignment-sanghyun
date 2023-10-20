import 'package:assignment1/controller/auth_controller.dart';
import 'package:assignment1/controller/main_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MainPage extends GetView<MainController> {
  const MainPage({super.key});
  static String route = '/login';

  @override
  Widget build(BuildContext context) {
    var user = Get.find<AuthController>().user!;
    return Scaffold(
        floatingActionButton: FloatingActionButton(onPressed: () {}),
        bottomNavigationBar: Obx(
          () => BottomNavigationBar(
              onTap: controller.onPageTapped,
              currentIndex: controller.curPage.value,
              items: [
                BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
                BottomNavigationBarItem(icon: Icon(Icons.person), label: 'My'),
              ]),
        ),
        body: SafeArea(
          child: PageView(
            controller: controller.pageController,
            children: [
              Column(
                children: [
                  Text(
                    '${user.username}님 안녕하세요',
                    style: TextStyle(fontSize: 32),
                  )
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ListTile(
                    title: Text(user.username),
                    subtitle: Text(user.name),
                    // leading: CircleAvatar(backgroundColor: NetworkImage()),
                  ),
                  ListTile(
                    onTap: controller.logout,
                    title: Text('로그아웃'),
                    leading: Icon(Icons.logout),
                  )
                ],
              ),
            ],
          ),
        ));
  }
}
