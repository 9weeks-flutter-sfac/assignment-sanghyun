import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

void main() async {
  for (var i = 100; i <= 150; i++) {
    var dio = Dio();
    var res = "https://sniperfactory.com/sfac/http_assignment_$i";

    try {
      var diogetdata = await dio.post(res,
          options: Options(
            headers: {
              'user-agent': 'SniperFactoryBrowser',
              'authorization': 'bearer ey-000000000',
            },
          ));
      print(diogetdata.statusCode);
      if (diogetdata.statusCode == 200) {
        print(diogetdata.data);
      }
    } catch (e) {
      print(e);
    }
  }
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
