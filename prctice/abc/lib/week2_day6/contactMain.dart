import 'package:abc/week2_day6/contactRecord.dart';
import 'package:abc/week2_day6/contactSetting.dart';
import 'package:abc/week2_day6/contactUpgrade.dart';
import 'package:flutter/material.dart';

class contactMain extends StatefulWidget {
  const contactMain({super.key});

  @override
  State<contactMain> createState() => _contactMainState();
}

var page = 0;

class _contactMainState extends State<contactMain> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('내 연락처'),
        actions: [Icon(Icons.search), Icon(Icons.more_vert)],
      ),
      body: [contactUpgrade(), contackRecord(), contackSetting()][page],
      bottomNavigationBar: BottomNavigationBar(
          onTap: (v) {
            page = v;
            setState(() {});
          },
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.contact_phone), label: '연락처'),
            BottomNavigationBarItem(
                icon: Icon(Icons.settings_backup_restore_rounded),
                label: '통화기록'),
            BottomNavigationBarItem(icon: Icon(Icons.settings), label: '설정'),
          ]),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add),
      ),
    );
  }
}
