import 'dart:ui';

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      scrollBehavior: const MaterialScrollBehavior().copyWith(
        dragDevices: {PointerDeviceKind.mouse},
      ),
      home: Scaffold(
        body: SafeArea(
            child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                '오늘의 하루는',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 40),
              ),
              Text(
                '어땠나요?',
                style: TextStyle(fontSize: 20),
              ),
              SizedBox(
                height: 200,
                width: 300,
                child: PageView(children: [
                  Container(
                    child: Center(
                      child: Text(
                        '우울함',
                        style: TextStyle(color: Colors.white, fontSize: 30),
                      ),
                    ),
                    width: 300,
                    height: 200,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                          begin: Alignment.centerLeft,
                          end: Alignment.centerRight,
                          colors: [
                            Colors.black,
                            Colors.white,
                          ]),
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  Container(
                    child: Center(
                      child: Text(
                        '행복함',
                        style: TextStyle(color: Colors.white, fontSize: 30),
                      ),
                    ),
                    width: 300,
                    height: 200,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                          begin: Alignment.centerLeft,
                          end: Alignment.centerRight,
                          colors: [
                            Colors.yellow.shade800,
                            Colors.yellow.shade200,
                          ]),
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  Container(
                    child: Center(
                      child: Text(
                        '상쾌함',
                        style: TextStyle(color: Colors.white, fontSize: 30),
                      ),
                    ),
                    width: 300,
                    height: 200,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                          begin: Alignment.centerLeft,
                          end: Alignment.centerRight,
                          colors: [
                            Colors.blue,
                            Colors.green,
                          ]),
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ]),
              ),
              Divider(),
              Container(
                color: Colors.blue,
                height: 80,
                child: Row(children: [
                  Padding(
                    padding: EdgeInsets.all(10),
                    child: CircleAvatar(
                      radius: 40,
                      backgroundImage: AssetImage('assets/images/human.png'),
                    ),
                  ),
                  Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          '라이언',
                          style: TextStyle(fontSize: 20, color: Colors.white),
                        ),
                        Text(
                          ' 게임개발\nC#, Unity',
                          style: TextStyle(color: Colors.white),
                        )
                      ]),
                  SizedBox(
                    width: 150,
                  ),
                  Icon(
                    Icons.add,
                    color: Colors.white,
                  )
                ]),
              )
            ],
          ),
        )),
      ),
    );
  }
}
