import 'package:abc/foodList.dart';
import 'package:flutter/material.dart';

// 1. 음식을 누르면 주문 리스트에 담기는 키오스크앱을 만들어봅니다.
// 2. 음식이미지는 자유이며, 필요한 경우 위에 첨부된 파일을 이용하여도 됩니다.
// 3. 하단에 떠있는 버튼을 누르면 지금까지 주문된 주문 리스트를 초기화합니다.
// 4. 하단에 떠있는 버튼은 정중앙의 하단, 넓게 펴진 형태로 [ 초기화하기 ] 텍스트를 포함합니다.
// 5. 음식이 보여지는 것은 [갤러리] 형태로 보여지게 하며, 검색을 통해 해결합니다.
// 6. 그 외 UI 디자인은 자유입니다.

class kiosk extends StatefulWidget {
  const kiosk({super.key});

  @override
  State<kiosk> createState() => _kioskState();
}

class _kioskState extends State<kiosk> {
  List menu = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('분식왕 이테디 주문하기'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              '주문 리스트',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 32),
            ),
            Text(menu.toString()),
            Text('음식',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 32)),
            Expanded(
              child: GridView.count(crossAxisCount: 3, children: [
                InkWell(
                  onTap: () {
                    menu.add('맥주');
                    setState(() {});
                  },
                  child: foodList(
                    img: 'assets/kiosk/option_beer.png',
                    foodName: '맥주',
                  ),
                ),
                InkWell(
                    onTap: () {
                      menu.add('떡볶이');
                      setState(() {});
                    },
                    child: foodList(
                      img: 'assets/kiosk/option_bokki.png',
                      foodName: '떡볶이',
                    )),
                InkWell(
                    onTap: () {
                      menu.add('김밥');
                      setState(() {});
                    },
                    child: foodList(
                      img: 'assets/kiosk/option_kimbap.png',
                      foodName: '김밥',
                    )),
                InkWell(
                    onTap: () {
                      menu.add('오무라이스');
                      setState(() {});
                    },
                    child: foodList(
                      img: 'assets/kiosk/option_omurice.png',
                      foodName: '오무라이스',
                    )),
                InkWell(
                    onTap: () {
                      menu.add('돈까스');
                      setState(() {});
                    },
                    child: foodList(
                      img: 'assets/kiosk/option_pork_cutlets.png',
                      foodName: '돈까스',
                    )),
                InkWell(
                    onTap: () {
                      menu.add('라면');
                      setState(() {});
                    },
                    child: foodList(
                      img: 'assets/kiosk/option_ramen.png',
                      foodName: '라면',
                    )),
                InkWell(
                    onTap: () {
                      menu.add('우동');
                      setState(() {});
                    },
                    child: foodList(
                      img: 'assets/kiosk/option_udon.png',
                      foodName: '우동',
                    )),
              ]),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
          label: Text('초기화하기'),
          onPressed: () {
            menu = [];
            setState(() {});
          }),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
