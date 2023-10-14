import 'package:flutter/material.dart';

// ## **조건**

// - RichText 위젯 사용
// - Text 위젯 사용불가
// - Column 위젯 사용불가
// - style을 지정한 위젯은 4가지 이상
// - 문단은 3문단 이상

class WeekOne extends StatelessWidget {
  const WeekOne({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: PageView(
        children: [
          Center(
            child: Center(
              child: RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                      style: TextStyle(fontWeight: FontWeight.bold),
                      children: [
                        TextSpan(text: '안녕하세요\n'),
                        TextSpan(text: '간단하게 제 '),
                        TextSpan(
                            text: '소개',
                            style: TextStyle(
                              color: Colors.blue,
                              fontSize: 24,
                            )),
                        TextSpan(text: '를 해보겠습니다\n\n\n먼저 저의 MBTI는 '),
                        TextSpan(
                            text: 'INFJ',
                            style: TextStyle(color: Colors.red, fontSize: 24)),
                        TextSpan(text: '이고\n직업은 '),
                        TextSpan(
                            text: '개발자',
                            style:
                                TextStyle(color: Colors.green, fontSize: 24)),
                        TextSpan(text: '입니다\n\n\n'),
                        TextSpan(
                            text: '꿈',
                            style: TextStyle(
                                color: Colors.yellow,
                                fontWeight: FontWeight.normal,
                                decoration: TextDecoration.lineThrough,
                                decorationColor: Colors.black)),
                        TextSpan(
                            text: '없고요\n',
                            style: TextStyle(
                                fontWeight: FontWeight.normal,
                                decoration: TextDecoration.lineThrough)),
                        TextSpan(
                            text: '그냥 놀고 싶습니다\n\n\n',
                            style: TextStyle(
                                fontWeight: FontWeight.normal,
                                decoration: TextDecoration.lineThrough)),
                        TextSpan(
                            text: '감사합니다',
                            style: TextStyle(color: Colors.pink, fontSize: 24))
                      ])),
            ),
          )
        ],
      ),
    ));
  }
}
