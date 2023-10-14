import 'package:abc/week2_day6/contactMain.dart';
import 'package:abc/week2_day6/dataUse.dart';

import 'package:flutter/material.dart';

class weekSix extends StatelessWidget {
  const weekSix({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        ListTile(
          title: Text('연락처앱 업그레이드'),
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => contactMain()));
          },
        ),
        ListTile(
          title: Text('데이터 활용해서 그리드뷰 만들기'),
          onTap: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => dataUse()));
          },
        )
      ]),
    );
  }
}
