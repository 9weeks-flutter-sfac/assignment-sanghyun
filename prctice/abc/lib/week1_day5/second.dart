import 'package:flutter/material.dart';
// - TextField에 입력시, 바로 밑에 위치한 하단의 Text위젯에 똑같이 적용되도록 합니다.
// - FAB(FloatingActionButton)을 클릭하면, 작성중이던 모든 내용이 사라집니다.

class second extends StatefulWidget {
  const second({super.key});

  @override
  State<second> createState() => _secondState();
}

var textChanged = TextEditingController();

class _secondState extends State<second> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('2번 문제'),
        centerTitle: true,
      ),
      body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        TextField(
          controller: textChanged,
          onChanged: (v) {
            setState(() {});
          },
        ),
        Text(textChanged.text),
      ]),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          textChanged.text = '';
          setState(() {});
        },
        child: Icon(Icons.close),
      ),
    );
  }
}
