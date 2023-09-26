import 'dart:ui';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      scrollBehavior: const MaterialScrollBehavior().copyWith(
        dragDevices: {PointerDeviceKind.mouse},
      ),
      home: MyPage(),
    );
  }
}

class MyPage extends StatefulWidget {
  MyPage({super.key});

  @override
  State<MyPage> createState() => _MyPageState();
}

class _MyPageState extends State<MyPage> {
  var mathData = [
    26,
    2,
    9,
    47,
    98,
    24,
    43,
    99,
    96,
    45,
    35,
    19,
    37,
    60,
    31,
    74,
    26,
    4,
    28,
    19,
    59,
    14,
    75,
    13,
    93,
    88,
    64,
    15,
    68,
    34,
    96,
    48,
    1,
    44,
    14,
    11,
    31,
    39,
    28,
    100,
    22,
    73,
    78,
    98,
    36,
    49,
    74,
    16,
    35,
    91,
    14,
    73,
    93,
    49,
    3,
    99,
    4,
    29,
    86,
    56,
    17,
    13,
    97,
    55,
    94,
    7,
    100,
    66,
    59,
    85,
    94,
    11,
    16,
    48,
    16,
    44,
    75,
    14,
    17,
    88,
    92,
    12,
    49,
    35,
    42,
    82,
    19,
    27,
    11,
    21,
    34,
    27,
    47,
    40,
    66,
    90,
    99,
    93,
    63,
    90
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: PageView(children: [
        GridView.builder(
            itemCount: mathData.length,
            gridDelegate:
                SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 4),
            itemBuilder: (context, index) => Container(
                margin: EdgeInsets.all(10),
                width: 30,
                height: 30,
                decoration: BoxDecoration(
                    color: Colors.amber,
                    borderRadius: BorderRadius.circular(16)),
                child: Center(child: Text(mathData[index].toString())))),
        ListView.builder(
            itemCount: mathData.length,
            itemBuilder: ((context, index) => Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(4, 0, 0, 8),
                      child: Chip(
                          backgroundColor: Colors.white,
                          shadowColor: Colors.black38,
                          elevation: 4,
                          label: Container(
                              alignment: Alignment.center,
                              width: mathData[index] * 2,
                              height: 24,
                              child: Text(
                                  overflow: TextOverflow.visible,
                                  mathData[index].toString()))),
                    ),
                  ],
                )))
      ])),
    );
  }
}
