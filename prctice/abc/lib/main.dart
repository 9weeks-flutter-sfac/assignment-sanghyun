import 'dart:ui';

import 'package:abc/pageconnect/weekEight.dart';
import 'package:abc/pageconnect/weekFive.dart';
import 'package:abc/pageconnect/weekFore.dart';
import 'package:abc/week1_day1/weekOne.dart';
import 'package:abc/pageconnect/weekSeven.dart';
import 'package:abc/pageconnect/weekSix.dart';
import 'package:abc/pageconnect/weekThree.dart';
import 'package:abc/pageconnect/weekTwo.dart';
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
          InkWell(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => weekThree()));
            },
            child: Container(
              decoration: BoxDecoration(border: Border.all()),
              child: Center(child: Text('3일차')),
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => weekFore()));
            },
            child: Container(
              decoration: BoxDecoration(border: Border.all()),
              child: Center(child: Text('4일차')),
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => weekFive()));
            },
            child: Container(
              decoration: BoxDecoration(border: Border.all()),
              child: Center(child: Text('5일차')),
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => weekSix()));
            },
            child: Container(
              decoration: BoxDecoration(border: Border.all()),
              child: Center(child: Text('6일차')),
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => weekSeven()));
            },
            child: Container(
              decoration: BoxDecoration(border: Border.all()),
              child: Center(child: Text('7일차')),
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => weekEight()));
            },
            child: Container(
              decoration: BoxDecoration(border: Border.all()),
              child: Center(child: Text('8일차')),
            ),
          ),
        ],
      ),
    );
  }
}
