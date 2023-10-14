import 'package:flutter/material.dart';

// 1. 연락처에 저장될 친구들은 총 5명으로, 이름과 번호는 다음과 같다.
// - 이테디, 010-1000-2000
// - 김스틴, 010-9000-8000
// - 이주노, 010-3000-3000
// - 임헬렌, 010-2000-8000
// - 염해리, 010-1000-1000

// 2. 이미지는 네트워크로 (CDN 방식으로) 아래 URL에 랜덤이미지를 사용하세요.
// - https://picsum.photos/100/100

// - 사용한 위젯은 다음과 같다. (다른위젯사용가능)
// - Text, ListTile, Icon, Column, ???...

class onContact extends StatelessWidget {
  const onContact({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: ListView(
        children: [
          ListTile(
            leading: CircleAvatar(
                backgroundImage: NetworkImage('https://picsum.photos/100/100')),
            title: Padding(
              padding: const EdgeInsets.only(bottom: 4),
              child: Text('이테디'),
            ),
            subtitle: Text('010-1000-2000'),
            trailing: Icon(Icons.call),
          ),
          ListTile(
            leading: CircleAvatar(
                backgroundImage: NetworkImage('https://picsum.photos/100/50')),
            title: Padding(
              padding: const EdgeInsets.only(bottom: 4),
              child: Text('김스틴'),
            ),
            subtitle: Text('010-9000-8000'),
            trailing: Icon(Icons.call),
          ),
          ListTile(
            leading: CircleAvatar(
                backgroundImage: NetworkImage('https://picsum.photos/150/150')),
            title: Padding(
              padding: const EdgeInsets.only(bottom: 4),
              child: Text('이주노'),
            ),
            subtitle: Text('010-3000-3000'),
            trailing: Icon(Icons.call),
          ),
          ListTile(
            leading: CircleAvatar(
                backgroundImage: NetworkImage('https://picsum.photos/50/50')),
            title: Padding(
              padding: const EdgeInsets.only(bottom: 4),
              child: Text('임헬렌'),
            ),
            subtitle: Text('010-2000-8000'),
            trailing: Icon(Icons.call),
          ),
          ListTile(
            leading: CircleAvatar(
                backgroundImage: NetworkImage('https://picsum.photos/50/100')),
            title: Padding(
              padding: const EdgeInsets.only(bottom: 4),
              child: Text('염해리'),
            ),
            subtitle: Text('010-1000-1000'),
            trailing: Icon(Icons.call),
          ),
        ],
      )),
    );
  }
}
