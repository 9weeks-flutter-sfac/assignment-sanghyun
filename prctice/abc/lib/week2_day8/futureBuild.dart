import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

// - 다음의 URL에 데이터를 요청하여 문제를 해결합니다.
//     - https://sniperfactory.com/sfac/http_day16_dogs
// - 디바이스가 인터넷에 연결돼있는지 확인하는 패키지를 사용합니다.
//     - **패키지명 : connectivity_plus**
//     - FAB을 누르면 인터넷이 연결되어있는지 확인합니다.
//     - 인터넷 연결을 확인중일 때 “인터넷 확인 중 입니다”와 로딩 위젯을 보여줍니다.
//         - 이 때, 로딩 위젯은 어떠한 것이든 상관없습니다.
// - 화면을 아래로 당기면 데이터를 새로 요청할 수 있도록 패키지를 사용합니다.
//     - **패키지명 : pull_to_refresh**
// - 데이터를 가져올 때 사용자에게 데이터가 로딩중이라는 것을 알려줄 수 있도록 패키지를 활용합니다.
//     - **패키지명 : Shimmer**
// - 위 기능을 우선적으로 구현하며, 최대한 자연스러운 UX를 구현할 수 있도록 합니다.
// 그 외 과제를 위한 기능 및 디자인은 자유입니다.

var dio = Dio();

class futureBuild extends StatelessWidget {
  const futureBuild({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder(
        future: dio.get('https://sniperfactory.com/sfac/http_day16_dogs'),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            final parsedData = json.decode(snapshot.data.toString());
            final body = parsedData['body'];
            return GridView.builder(
                itemCount: body.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2),
                itemBuilder: (context, index) {
                  return Card(
                    child: Column(
                      children: [
                        Expanded(
                          child: Container(
                              width: double.infinity,
                              child: Image.network(
                                body[index]['url'].toString(),
                                fit: BoxFit.cover,
                              )),
                        ),
                        Text(body[index]['msg'].toString()),
                        Icon(Icons.message)
                      ],
                    ),
                  );
                });
          }

          return Text('dddddddddddddddddddddddddddd');
        },
      ),
    );
  }
}
