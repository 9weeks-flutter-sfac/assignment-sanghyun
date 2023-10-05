import 'package:flutter/material.dart';
import 'package:secret_cat_sdk/api/api.dart';

class secretPush extends StatefulWidget {
  const secretPush({super.key});

  @override
  State<secretPush> createState() => _secretPushState();
}

class _secretPushState extends State<secretPush> {
  var controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text('돌아가기'),
      ),
      extendBodyBehindAppBar: true,
      body: Stack(
        children: [
          ColorFiltered(
            colorFilter: ColorFilter.mode(
              Colors.black.withOpacity(0.3),
              BlendMode.dstIn,
            ),
            child: SizedBox(
              width: double.infinity,
              height: double.infinity,
              child: Image.asset(
                'assets/bamboo.jpg',
                fit: BoxFit.fill,
              ),
            ),
          ),
          Positioned(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 480,
                    child: TextField(
                      controller: controller,
                      maxLines: 7,
                      decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.black54,
                          border: InputBorder.none),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: ElevatedButton(
                        onPressed: () {
                          if (controller.text != '') {
                            SecretCatApi.addSecret(controller.text);
                          }
                          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                            backgroundColor: Colors.grey[900],
                            content: Text(
                              '비밀 공유 성공!',
                              style: TextStyle(color: Colors.white),
                            ),
                          ));
                        },
                        style:
                            ElevatedButton.styleFrom(fixedSize: Size(300, 36)),
                        child: Text('비밀공유')),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
