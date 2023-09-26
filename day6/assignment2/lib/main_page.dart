import 'package:assignment2/OptionCard.dart';
import 'package:assignment2/admin_page.dart';
import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  List myMenu = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      appBar: AppBar(
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        elevation: 0,
        title: GestureDetector(
            onDoubleTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => AdminPage()));
            },
            child: Text('분식왕 이테디 주문하기')),
        centerTitle: true,
      ),
      body: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Text(
          '주문리스트',
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
        Container(
          alignment: Alignment.center,
          height: 50,
          child: myMenu.isNotEmpty
              ? ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: myMenu.length,
                  itemBuilder: (context, index) {
                    return Chip(
                        onDeleted: () {
                          myMenu.removeAt(index);
                          setState(() {});
                        },
                        label: Text(myMenu[index]));
                  })
              : Text('주문한 옵션이 없습니다.'),
        ),
        const SizedBox(
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
      floatingActionButton: myMenu.isNotEmpty
          ? FloatingActionButton.extended(
              onPressed: () {},
              label: Text('결제 하기'),
            )
          : null,
    );
  }
}
