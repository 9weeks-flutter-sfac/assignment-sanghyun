import 'package:abc/calculator.dart';
import 'package:abc/kiosk.dart';
import 'package:flutter/material.dart';

class weekFore extends StatelessWidget {
  const weekFore({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: ListView(children: [
        ListTile(
          onTap: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => calculator()));
          },
          title: Text('사칙연산'),
        ),
        ListTile(
          onTap: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => kiosk()));
          },
          title: Text('키오스크앱'),
        ),
      ])),
    );
  }
}
