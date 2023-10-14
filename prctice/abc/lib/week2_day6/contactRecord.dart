import 'package:flutter/material.dart';

class contackRecord extends StatelessWidget {
  const contackRecord({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(children: [
        ListTile(
          title: Text('이테디'),
          subtitle: Text('010-0000-0000'),
          trailing: Icon(Icons.call),
        )
      ]),
    );
  }
}
