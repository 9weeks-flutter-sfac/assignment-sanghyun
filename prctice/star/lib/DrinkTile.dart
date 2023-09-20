import 'package:flutter/material.dart';

class DrinkTile extends StatelessWidget {
  const DrinkTile(
      {super.key,
      required this.name,
      required this.eName,
      required this.price,
      required this.image});

  final String image;
  final String name;
  final String eName;
  final String price;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(radius: 48, backgroundImage: AssetImage(image)),
      title: Text(
        name,
        style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
      ),
      subtitle: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            eName,
            style: TextStyle(color: Colors.grey[200]),
          ),
          Text(
            price,
            style: TextStyle(
                fontSize: 14, fontWeight: FontWeight.bold, color: Colors.black),
          )
        ],
      ),
    );
  }
}
