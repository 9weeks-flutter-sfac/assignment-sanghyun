import 'package:flutter/material.dart';

class MusicTile extends StatelessWidget {
  const MusicTile(
      {super.key,
      required this.img,
      required this.musicName,
      required this.artist,
      required this.time});

  final String img;
  final String musicName;
  final String artist;
  final String time;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Container(
          clipBehavior: Clip.antiAlias,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
          ),
          child: Image.asset(img)),
      title: Text(
        musicName,
        maxLines: 2,
      ),
      subtitle: Row(
        children: [
          Icon(
            Icons.check_circle,
            size: 16,
          ),
          Flexible(
              child: Text(
            artist,
            overflow: TextOverflow.ellipsis,
          )),
          Text(' · ' + time)
        ],
      ),
      trailing: Icon(Icons.more_vert),
    );
  }
}
