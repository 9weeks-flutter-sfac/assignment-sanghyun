import 'package:assignment2/controller/auth_controller.dart';
import 'package:assignment2/controller/main_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MainPage extends GetView<MainController> {
  const MainPage({super.key});
  static const route = '/main';

  @override
  Widget build(BuildContext context) {
    var user = Get.find<AuthController>().user!;
    return Scaffold(
      body: PageView(
        controller: controller.pageController,
        children: [
          Column(
            children: [
              Text(
                '${user.name}안녕하세요',
                style: TextStyle(fontSize: 24),
              ),
              Obx(() => Expanded(
                    child: ListView.builder(
                        itemCount: controller.document?.length ?? 0,
                        itemBuilder: ((context, index) => Column(
                              children: [
                                Text(controller.document![index].title),
                                Text(controller.document![index].content),
                                if (controller
                                        .document![index].attachment_url !=
                                    '')
                                  Image.network(
                                      controller.document!.last.attachment_url)
                              ],
                            ))),
                  )),

              // Text(controller.document?.first.title ?? ''))
            ],
          ),
          Column(
            children: [
              ListTile(
                leading: CircleAvatar(
                  backgroundImage: NetworkImage(user.avatar),
                ),
                title: Text(user.name),
              ),
              ListTile(
                  leading: Icon(Icons.logout),
                  title: Text('로그아웃'),
                  onTap: controller.logout),
            ],
          )
        ],
      ),
      bottomNavigationBar: Obx(
        () => BottomNavigationBar(
            currentIndex: controller.curPage.value,
            onTap: controller.onPageTapped,
            items: [
              BottomNavigationBarItem(icon: Icon(Icons.home), label: 'home'),
              BottomNavigationBarItem(icon: Icon(Icons.person), label: 'my'),
            ]),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          controller.readDocuments();
        },
        child: Icon(Icons.replay),
      ),
    );
  }
}
