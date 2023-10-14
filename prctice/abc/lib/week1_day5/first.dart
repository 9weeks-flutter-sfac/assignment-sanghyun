import 'package:flutter/material.dart';

// ListView.builder 위젯을 활용하여 높이가 300인 동물 위젯을 생성합니다.
// 하단의 FAB(FloatingActionButton)을 누르면, 스크롤 위치가 최상단으로 이동되게합니다.

class first extends StatefulWidget {
  const first({super.key});

  @override
  State<first> createState() => _firstState();
}

class _firstState extends State<first> {
  List animalList = ['강아지', '고양이', '앵무새', '토끼', '오리', '거위', '원숭이'];

  ScrollController scroll = ScrollController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('1번 문제'),
        centerTitle: true,
      ),
      body: ListView.builder(
          controller: scroll,
          itemCount: animalList.length,
          itemBuilder: (context, index) {
            return Container(
              height: 300,
              child: Center(child: Text(animalList[index])),
            );
          }),
      floatingActionButton: FloatingActionButton(
          child: Icon(Icons.vertical_align_top),
          onPressed: () {
            scroll.jumpTo(0);
          }),
    );
  }
}
