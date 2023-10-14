import 'package:abc/week2_day7/day7Assignment.dart';

import 'package:flutter/material.dart';

class weekSeven extends StatelessWidget {
  const weekSeven({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        ListTile(
          title: Text('7일차 과제'),
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => day7Assignment()));
          },
        ),
      ]),
    );
  }
}
