import 'package:flutter/material.dart';

class MusicTile extends StatelessWidget {
  const MusicTile(
      {super.key,
      required this.image,
      required this.title,
      required this.subTitle,
      required this.time});

  final String image;
  final String title;
  final String subTitle;
  final String time;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Row(
        children: [
          Container(
              height: 56,
              width: 56,
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(4)),
              clipBehavior: Clip.antiAliasWithSaveLayer,
              child: Image.asset(image)),
          SizedBox(
            width: 16,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(title,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(color: Colors.white)),
              Row(
                children: [
                  Icon(
                    Icons.check_circle,
                    color: Colors.white,
                    size: 16,
                  ),
                  Text(
                    subTitle,
                    style: TextStyle(color: Colors.white),
                  ),
                  Text(
                    ' · $time',
                    style: TextStyle(color: Colors.white),
                  ),
                ],
              )
            ],
          ),
          Spacer(),
          Icon(
            Icons.more_vert,
            color: Colors.white,
          )
        ],
      ),
    );
  }
}
