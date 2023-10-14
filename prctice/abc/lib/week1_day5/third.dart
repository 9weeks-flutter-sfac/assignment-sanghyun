import 'package:flutter/material.dart';

// - Sun, Moon, Star라는 값이 있으며,
// 오른쪽의 버튼을 눌렀을 때, 스위칭이 각각 될 수 있도록 함.
// - 이 때 스위칭이란, 활성화 여부를 뜻하며
// 불이 들어와 있을 땐 끄고, 꺼져있을 땐 켜는 것을 뜻함.
// - FAB를 클릭하면 모든 활성화되어있는 아이콘이 비활성화됨.
// - 아이콘의 색이 켜졌을 땐 끄고, 꺼져있을 때는 켜는 시스템을 제작함.
// - “태양” 입력 후 “엔터(혹은 제출)”하였을 때, 달 아이콘의 색상이 스위칭이 되도록 함.
// - “달” 입력 후 “엔터(혹은 제출)”하였을 때, 달 아이콘의 색상이 스위칭이 되도록 함.
// - “별” 입력 후 “엔터(혹은 제출)”하였을 때, 달 아이콘의 색상이 스위칭이 되도록 함.
// - FAB를 클릭하면 모든 활성화되어있는 아이콘이 비활성화됨.

class third extends StatefulWidget {
  const third({
    super.key,
  });

  @override
  State<third> createState() => _thirdState();
}

class _thirdState extends State<third> {
  bool sun = false;
  bool moon = false;
  bool star = false;
  var clean = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('3번 문제'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          ListTile(
            leading: Icon(
              Icons.sunny,
              color: sun ? Colors.red : null,
            ),
            title: Text('Sun'),
            trailing: InkWell(
                onTap: () {
                  sun = !sun;
                  setState(() {});
                },
                child: Icon(Icons.arrow_right)),
          ),
          ListTile(
            leading: Icon(
              Icons.nightlight_round,
              color: moon ? Colors.yellow : null,
            ),
            title: Text('Moon'),
            trailing: InkWell(
                onTap: () {
                  moon = !moon;
                  setState(() {});
                },
                child: Icon(Icons.arrow_right)),
          ),
          ListTile(
            leading: Icon(
              Icons.star,
              color: star ? Colors.yellow : null,
            ),
            title: Text('Star'),
            trailing: InkWell(
                onTap: () {
                  star = !star;
                  setState(() {});
                },
                child: Icon(Icons.arrow_right)),
          ),
          TextField(
            decoration: InputDecoration(hintText: ' 키고 끄고 싶은 아이콘을 입력하세요.'),
            onChanged: (v) {
              (v == '태양') ? sun = false : null;
              (v == '달') ? moon = false : null;
              (v == '별') ? star = false : null;
              setState(() {});
            },
            controller: clean,
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          sun = false;
          moon = false;
          star = false;
          setState(() {});
        },
        child: Icon(Icons.replay),
      ),
    );
  }
}
