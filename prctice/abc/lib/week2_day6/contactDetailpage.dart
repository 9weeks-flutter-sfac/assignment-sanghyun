import 'package:abc/week2_day6/contactList.dart';
import 'package:abc/week2_day6/contactUpgrade.dart';
import 'package:flutter/material.dart';

class contackDetailpage extends StatelessWidget {
  const contackDetailpage({super.key, required this.index});

  final int index;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          title: Text('연락처 상세'),
          actions: [Icon(Icons.search), Icon(Icons.more_vert)],
          elevation: 0,
          backgroundColor: Colors.transparent,
        ),
        body: Column(
          children: [
            SizedBox(
                width: double.infinity,
                height: 180,
                child: Image.network(
                  'https://picsum.photos/100/100',
                  fit: BoxFit.cover,
                )),
            ListTile(
              title: Text(contact[index]['name']),
              subtitle: Text(contact[index]["phone"]),
              leading: CircleAvatar(
                  foregroundImage: NetworkImage(contact[index]['img'])),
              trailing: Icon(Icons.call),
            ),
          ],
        ));
  }
}
