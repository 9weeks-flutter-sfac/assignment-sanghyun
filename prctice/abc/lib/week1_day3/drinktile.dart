import 'package:flutter/material.dart';

class drinkTile extends StatelessWidget {
  const drinkTile(
      {super.key,
      required this.img,
      required this.kName,
      required this.eName,
      required this.price});

  final String img;
  final String kName;
  final String eName;
  final String price;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(bottom: 12),
      child: Row(
        children: [
          CircleAvatar(
            maxRadius: 48,
            foregroundImage: AssetImage(img),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  kName,
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                Text(
                  eName,
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w200,
                      color: Colors.grey),
                ),
                SizedBox(
                  height: 8,
                ),
                Text(price),
              ],
            ),
          )
        ],
      ),
    );
  }
}
