import 'package:assignment1/FirstPage.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class SecoundPage extends StatefulWidget {
  const SecoundPage({super.key});

  @override
  State<SecoundPage> createState() => _SecoundPageState();
}

class _SecoundPageState extends State<SecoundPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('7일차 과제 2번'),
        ),
        body: Center(
            child: CarouselSlider(
                options: CarouselOptions(
                    height: 300.0,
                    autoPlay: true,
                    autoPlayInterval: Duration(milliseconds: 2500),
                    autoPlayAnimationDuration: Duration(seconds: 1)),
                items: imageUrl
                    .map((e) => Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(16)),
                            clipBehavior: Clip.antiAlias,
                            child: Image.network(
                              e,
                              fit: BoxFit.fill,
                            ),
                          ),
                        ))
                    .toList())));
  }
}
