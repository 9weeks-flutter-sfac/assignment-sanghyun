import 'package:flutter/material.dart';
import 'package:dio/dio.dart';

void main() async {
  runApp(day8_Quiz());
  for (var i = 100; i <= 150; i++) {
    final dio = Dio();
    var response = ('"https://sniperfactory.com/sfac/http_assignment_{$i}"');

    try {
      var res = await dio.get(response,
          options: Options(
            headers: {
              'user-agent': 'SniperFactoryBrowser',
              'authorization': 'bearer ey-000000000',
            },
          ));
      if (res.statusCode == 200) {
        print(res.data);
      }
      print(res.statusCode);
    } catch (e) {}
  }
}

class day8_Quiz extends StatelessWidget {
  const day8_Quiz({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Center(
        child: Text(''),
      )),
    );
  }
}
