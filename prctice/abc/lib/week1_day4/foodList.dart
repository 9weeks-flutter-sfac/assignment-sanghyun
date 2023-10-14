import 'package:flutter/material.dart';

class foodList extends StatelessWidget {
  const foodList({super.key, required this.img, required this.foodName});

  final String img;
  final String foodName;
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
        Expanded(
          child: Image.asset(
            img,
            fit: BoxFit.fill,
          ),
        ),
        Text(
          foodName,
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        Text('[담기]')
      ]),
    );
  }
}
