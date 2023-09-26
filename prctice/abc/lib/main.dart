import 'dart:ui';

import 'package:abc/weekOne.dart';
import 'package:abc/weekTwo.dart';
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
      home: MainPage(),
    );
  }
}

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('연습해보기'),
      ),
      body: GridView(
        gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
        children: [
          InkWell(
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => WeekOne()));
            },
            child: Container(
              decoration: BoxDecoration(border: Border.all()),
              child: Center(child: Text('1일차')),
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => WeekTwo()));
            },
            child: Container(
              decoration: BoxDecoration(border: Border.all()),
              child: Center(child: Text('2일차')),
            ),
          ),
          Container(
            decoration: BoxDecoration(border: Border.all()),
            child: Center(child: Text('3일차')),
          ),
        ],
      ),
    );
  }
}
