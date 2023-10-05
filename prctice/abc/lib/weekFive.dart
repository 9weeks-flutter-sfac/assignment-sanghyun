import 'package:abc/first.dart';
import 'package:abc/second.dart';
import 'package:abc/third.dart';
import 'package:flutter/material.dart';

class weekFive extends StatelessWidget {
  const weekFive({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('5일차 과제'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ElevatedButton(
              child: Text('1번문제'),
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => first()));
              },
            ),
            ElevatedButton(
              child: Text('2번문제'),
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => second()));
              },
            ),
            ElevatedButton(
              child: Text('3번문제'),
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => third()));
              },
            ),
          ],
        ),
      ),
    );
  }
}
