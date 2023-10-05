import 'package:abc/drinktile.dart';
import 'package:flutter/material.dart';

// 1. 음료 이미지는 CircleAvatar를 사용하며 48의 반지름크기를 갖는다.
// 2. 음료 영문명의 font size는 14pt이며 회색으로 w200의 굵기를 가진다.
// 3. 음료의 정보를 보여주는 위젯을 만들고, 이름은 DrinkTile로 한다.
class starbucks extends StatelessWidget {
  const starbucks({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          actions: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Icon(Icons.search),
            ),
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListView(
            children: [
              Text(
                'NEW',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 36),
              ),
              SizedBox(
                height: 16,
              ),
              drinkTile(
                  img: 'assets/starbucks/item_drink1.jpeg',
                  kName: '골든 미모사 그린 티',
                  eName: 'Golden Mimosa Green Tea',
                  price: '6100원'),
              drinkTile(
                  img: 'assets/starbucks/item_drink2.jpeg',
                  kName: '블랙 햅쌀 고봉 라떼',
                  eName: 'Black Rice Latte',
                  price: '6300원'),
              drinkTile(
                  img: 'assets/starbucks/item_drink3.jpeg',
                  kName: '아이스 블랙 햅쌀 고봉 라떼',
                  eName: 'Iced Black Rice Latte',
                  price: '6300원'),
              drinkTile(
                  img: 'assets/starbucks/item_drink4.jpeg',
                  kName: '스타벅스 튜메릭 라떼',
                  eName: 'Starbucks Turmeric Latte',
                  price: '6100원'),
              drinkTile(
                  img: 'assets/starbucks/item_drink5.jpeg',
                  kName: '아이스 스타벅스 튜메릭 라떼',
                  eName: 'Iced Starbucks Turmeric Latte',
                  price: '6100원'),
            ],
          ),
        ),
        bottomSheet: Container(
          height: 56,
          color: Colors.black87,
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                '주문할 매장을 선택해 주세요',
                style: TextStyle(color: Colors.white),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(
                Icons.keyboard_arrow_down,
                color: Colors.white,
              ),
            )
          ]),
        ),
        bottomNavigationBar: BottomNavigationBar(
            currentIndex: 2,
            selectedItemColor: Colors.green,
            type: BottomNavigationBarType.fixed,
            items: [
              BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
              BottomNavigationBarItem(icon: Icon(Icons.payment), label: 'pay'),
              BottomNavigationBarItem(icon: Icon(Icons.coffee), label: 'Order'),
              BottomNavigationBarItem(icon: Icon(Icons.shop), label: 'Shop'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.more_horiz), label: 'Other'),
            ]));
  }
}
