import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:abc/week2_day7/day7_imageUrl.dart';

class day7_2 extends StatefulWidget {
  const day7_2({super.key});

  @override
  State<day7_2> createState() => _day7_2State();
}

class _day7_2State extends State<day7_2> {
  CarouselController _pageController = CarouselController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('7일차 과제 2번'),
      ),
      body: CarouselSlider.builder(
        options: CarouselOptions(
          height: 1000,
        ),
        carouselController: _pageController,
        itemCount: imageUrlList.length,
        itemBuilder: (Bcontext, Index, pageViewIndex) => Column(
          children: [
            TextButton(
                onPressed: () {
                  _pageController.jumpToPage(0);
                  print(pageViewIndex);
                },
                child: Text('dddddddd')),
            Image.network(imageUrlList[Index]),
          ],
        ),
      ),
    );
  }
}
