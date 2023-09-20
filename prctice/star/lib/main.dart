import 'package:flutter/material.dart';
import 'package:star/DrinkTile.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Icon(
          Icons.arrow_back_ios_new,
          color: Colors.black,
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(
              Icons.search,
              color: Colors.black,
            ),
          )
        ],
      ),
      body: ListView(children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            'NEW',
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          ),
        ),
        DrinkTile(
            name: '골드 미모사 그린티',
            eName: 'Golden Mimosa Green Tea',
            price: '6100원',
            image: 'assets/images/item_drink1.jpeg'),
        DrinkTile(
            name: '블랙 햅쌀 고봉 라떼',
            eName: 'Black Rice Latte',
            price: '6300원',
            image: 'assets/images/item_drink2.jpeg'),
        DrinkTile(
            name: ' 아이스 블랙 햅쌀 고봉 라떼',
            eName: 'Iced Black Rice Latte',
            price: '6300원',
            image: 'assets/images/item_drink3.jpeg'),
        DrinkTile(
            name: ' 스타벅스 튜메릭 라떼',
            eName: 'Starbucks Turmeric Latte',
            price: '6100원',
            image: 'assets/images/item_drink4.jpeg'),
        DrinkTile(
            name: ' 아이스 스타벅스 튜메릭 라떼',
            eName: 'Iced Starbucks Turmeric Latte',
            price: '6100원',
            image: 'assets/images/item_drink5.jpeg'),
      ]),
      bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          fixedColor: Colors.green,
          currentIndex: 2,
          items: [
            BottomNavigationBarItem(
              backgroundColor: Colors.black,
              icon: Icon(
                Icons.home,
              ),
              label: 'Home',
            ),
            BottomNavigationBarItem(icon: Icon(Icons.payment), label: 'Pay'),
            BottomNavigationBarItem(icon: Icon(Icons.coffee), label: 'Order'),
            BottomNavigationBarItem(icon: Icon(Icons.shop), label: 'Shop'),
            BottomNavigationBarItem(
                icon: Icon(Icons.more_horiz), label: 'Other'),
          ]),
      bottomSheet: Container(
        height: 56,
        color: Colors.black,
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              '주문할 매장을 선택해주세요',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(
              Icons.navigate_before,
              color: Colors.white,
            ),
          )
        ]),
      ),
    ));
  }
}
