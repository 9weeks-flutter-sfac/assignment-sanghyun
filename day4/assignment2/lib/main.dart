import 'package:assignment2/OptionCard.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List myMenu = [];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      appBar: AppBar(
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        elevation: 0,
        title: Text('분식왕 이테디 주문하기'),
        centerTitle: true,
      ),
      body: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Text(
          '주문리스트',
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
        Text(myMenu.toString()),
        SizedBox(
          height: 8,
        ),
        Text(
          '음식',
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
        Expanded(
          child: GridView(
            gridDelegate:
                SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
            children: [
              InkWell(
                onTap: () {
                  myMenu.add('떡볶이');
                  setState(() {});
                },
                child: OptionCard(
                  foodName: '떡볶이',
                  imgUrl: 'assets/images/option_bokki.png',
                ),
              ),
              InkWell(
                onTap: () {
                  myMenu.add('맥주');
                  setState(() {});
                },
                child: OptionCard(
                  foodName: '맥주',
                  imgUrl: 'assets/images/option_beer.png',
                ),
              ),
              InkWell(
                onTap: () {
                  myMenu.add('김밥');
                  setState(() {});
                },
                child: OptionCard(
                  foodName: '김밥',
                  imgUrl: 'assets/images/option_kimbap.png',
                ),
              ),
              InkWell(
                onTap: () {
                  myMenu.add('오므라이스');
                  setState(() {});
                },
                child: OptionCard(
                  foodName: '오므라이스',
                  imgUrl: 'assets/images/option_omurice.png',
                ),
              ),
              InkWell(
                onTap: () {
                  myMenu.add('돈까스');
                  setState(() {});
                },
                child: OptionCard(
                  foodName: '돈까스',
                  imgUrl: 'assets/images/option_pork_cutlets.png',
                ),
              ),
              InkWell(
                onTap: () {
                  myMenu.add('라면');
                  setState(() {});
                },
                child: OptionCard(
                  foodName: '라면',
                  imgUrl: 'assets/images/option_ramen.png',
                ),
              ),
              InkWell(
                onTap: () {
                  myMenu.add('우동');
                  setState(() {});
                },
                child: OptionCard(
                  foodName: '우동',
                  imgUrl: 'assets/images/option_udon.png',
                ),
              ),
            ],
          ),
        )
      ]),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          myMenu = [];
          setState(() {});
        },
        label: Text('초기화 하기'),
      ),
    ));
  }
}
