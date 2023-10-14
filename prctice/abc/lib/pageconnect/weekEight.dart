import 'package:abc/week2_day8/day8_Quiz.dart';
import 'package:abc/week2_day8/futureBuild.dart';
import 'package:flutter/material.dart';

class weekEight extends StatelessWidget {
  const weekEight({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: ListView(children: [
        ListTile(
          onTap: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => day8_Quiz()));
          },
          title: Text('8일차 퀴즈'),
        ),
        ListTile(
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => futureBuild()));
          },
          title: Text('FutureBuilder 활용'),
        ),
      ])),
    );
  }
}
