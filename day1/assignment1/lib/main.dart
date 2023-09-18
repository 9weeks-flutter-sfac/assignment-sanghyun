import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Center(
            child: RichText(
                textAlign: TextAlign.center,
                text: TextSpan(children: [
                  TextSpan(
                      text: '안녕하세요!\n',
                      style: TextStyle(fontWeight: FontWeight.bold)),
                  TextSpan(
                    text: '간단하게 제 ',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  TextSpan(
                    text: '소개',
                    style: TextStyle(
                        color: Colors.blue,
                        fontSize: 25,
                        fontWeight: FontWeight.bold),
                  ),
                  TextSpan(
                    text: '를 해보겠습니다.\n\n\n',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  TextSpan(
                    text: '먼저 제 MBTI는',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  TextSpan(
                    text: 'INFJ',
                    style: TextStyle(
                        color: Colors.red,
                        fontWeight: FontWeight.bold,
                        fontSize: 25),
                  ),
                  TextSpan(
                    text: '이고\n',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  TextSpan(
                    text: '직업은 ',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  TextSpan(
                    text: '개발자 ',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.green,
                        fontSize: 25),
                  ),
                  TextSpan(
                    text: '입니다.\n\n\n',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  TextSpan(
                    text: '꿈',
                    style: TextStyle(
                        fontStyle: FontStyle.normal,
                        color: Colors.yellow,
                        decoration: TextDecoration.lineThrough,
                        decorationColor: Colors.black),
                  ),
                  TextSpan(
                    text: '은 없고요\n',
                    style: TextStyle(
                        fontStyle: FontStyle.normal,
                        decoration: TextDecoration.lineThrough,
                        decorationColor: Colors.black),
                  ),
                  TextSpan(
                    text: '그냥 놀고 싶습니다.\n\n\n',
                    style: TextStyle(
                        fontStyle: FontStyle.normal,
                        decoration: TextDecoration.lineThrough,
                        decorationColor: Colors.black),
                  ),
                  TextSpan(
                    text: '감사합니다.',
                    style: TextStyle(
                        color: Colors.pink[300],
                        fontSize: 25,
                        fontWeight: FontWeight.bold),
                  ),
                ])),
          ),
        ),
      ),
    );
  }
}
