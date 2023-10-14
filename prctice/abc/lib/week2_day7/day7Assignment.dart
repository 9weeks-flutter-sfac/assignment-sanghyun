import 'package:abc/week2_day7/day7_1.dart';
import 'package:abc/week2_day7/day7_2.dart';
import 'package:flutter/material.dart';

class day7Assignment extends StatefulWidget {
  const day7Assignment({super.key});

  @override
  State<day7Assignment> createState() => _day7AssignmentState();
}

class _day7AssignmentState extends State<day7Assignment> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(children: [day7_1(), day7_2()]),
    );
  }
}
