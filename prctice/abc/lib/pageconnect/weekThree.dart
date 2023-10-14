import 'package:abc/week1_day3/starbucks.dart';
import 'package:abc/week1_day3/youtubeMusic.dart';
import 'package:flutter/material.dart';

// 1. 음악명은 최대 2줄까지만 가능하다.
// 2. 가수명과 플레이시간은 최대 1줄까지만 가능하며 필요한 경우 가수명을 줄인다.
// 3. 음악의 정보를 보여주는 위젯을 만들고, 이름은 MusicTile로 한다.

class weekThree extends StatelessWidget {
  const weekThree({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: ListView(
        children: [
          ListTile(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => youtubeMusic()));
              },
              title: Text('유튜브 뮤직앱')),
          ListTile(
            title: Text('스타벅스 앱 화면'),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => starbucks()));
            },
          )
        ],
      )),
    );
  }
}
