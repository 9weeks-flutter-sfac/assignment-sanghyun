import 'dart:ui';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      scrollBehavior: const MaterialScrollBehavior().copyWith(
        dragDevices: {PointerDeviceKind.mouse},
      ),
      home: mainAssignment(),
    );
  }
}

class mainAssignment extends StatelessWidget {
  const mainAssignment({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('5일차 과제'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 36,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => FirstAssignment()));
                  },
                  child: Text('1번 과제'),
                ),
              ),
              SizedBox(
                height: 36,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => SceondAssignment()));
                  },
                  child: Text('2번 과제'),
                ),
              ),
              SizedBox(
                height: 36,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ThirdAssignment()));
                  },
                  child: Text('3번 과제'),
                ),
              ),
            ]),
      ),
    );
  }
}

class FirstAssignment extends StatefulWidget {
  const FirstAssignment({super.key});

  @override
  State<FirstAssignment> createState() => _FirstAssignmentState();
}

class _FirstAssignmentState extends State<FirstAssignment> {
  ScrollController scrollUp = ScrollController();

  @override
  Widget build(BuildContext context) {
    final List animalList = ['강아지', '고양이', '앵무새', '토끼', '오리', '거위', '원숭이'];

    return Scaffold(
        appBar: AppBar(
          title: Text('1번 문제'),
          centerTitle: true,
        ),
        body: ListView.builder(
          controller: scrollUp,
          itemExtent: 300,
          itemCount: animalList.length,
          itemBuilder: (BuildContext context, int index) {
            return ListTile(title: Center(child: Text(animalList[index])));
          },
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            scrollUp.jumpTo(0);
          },
          child: Icon(Icons.vertical_align_top),
        ));
  }

  Container animarContainer({String title = "Title", colorName = Colors.red}) {
    return Container(height: 300);
  }
}

class SceondAssignment extends StatefulWidget {
  const SceondAssignment({super.key});

  @override
  State<SceondAssignment> createState() => _SceondAssignmentState();
}

class _SceondAssignmentState extends State<SceondAssignment> {
  TextEditingController myTextFieldOnChanged = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('2번 문제'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 56,
              child: TextField(
                keyboardType: TextInputType.text,
                controller: myTextFieldOnChanged,
                onChanged: (v) {
                  setState(() {});
                },
              ),
            ),
            SizedBox(
              child: Text(myTextFieldOnChanged.text),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          myTextFieldOnChanged.text = '';
        },
        child: Icon(Icons.close),
      ),
    );
  }
}

class ThirdAssignment extends StatefulWidget {
  const ThirdAssignment({super.key});

  @override
  State<ThirdAssignment> createState() => _ThirdAssignmentState();
}

class _ThirdAssignmentState extends State<ThirdAssignment> {
  bool iconSunny = false;
  bool iconMoon = false;
  bool iconStar = false;

  void iconColor() {
    iconSunny = !iconSunny;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(children: [
          ListTile(
              leading: Icon(
                Icons.sunny,
                color: iconSunny ? Colors.red : null,
              ),
              title: Text('Sun'),
              trailing: GestureDetector(
                onTap: () {
                  iconColor();
                  setState(() {});
                },
                child: Icon(Icons.arrow_right_outlined),
              )),
          ListTile(
            leading:
                Icon(Icons.nightlight, color: iconMoon ? Colors.yellow : null),
            title: Text('Moon'),
            trailing: GestureDetector(
                onTap: () {
                  iconMoon = !iconMoon;
                  setState(() {});
                },
                child: Icon(Icons.arrow_right_outlined)),
          ),
          ListTile(
            leading: Icon(Icons.star, color: iconStar ? Colors.yellow : null),
            title: Text('Star'),
            trailing: GestureDetector(
                onTap: () {
                  iconStar = !iconStar;
                  setState(() {});
                },
                child: Icon(Icons.arrow_right_outlined)),
          ),
          TextField(
            // v가 달일때 iconMoon을 false로 변경
            //
            // v가 태양일때 iconSunny를 false로 변경
            keyboardType: TextInputType.text,

            onChanged: (v) {
              (v.toString() == '태양') ? iconSunny = false : null;
              v.toString() == '달' ? iconMoon = false : null;
              v.toString() == '별' ? iconStar = false : null;
              setState(() {});
            },
            decoration: InputDecoration(border: OutlineInputBorder()),
          )
        ]),
      ),
      floatingActionButton: FloatingActionButton(
        //이걸 누르면 참을 거짓으로 바꾸기
        onPressed: () {
          iconSunny = false;
          iconMoon = false;
          iconStar = false;
          setState(() {});
        },
        child: Icon(Icons.replay),
      ),
    );
  }
}
