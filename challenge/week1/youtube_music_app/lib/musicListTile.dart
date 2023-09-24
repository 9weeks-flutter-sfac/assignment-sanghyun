import 'package:flutter/material.dart';

class MusicListTile extends StatelessWidget {
  const MusicListTile(
      {super.key,
      required this.musicImage,
      required this.musicTitle,
      required this.musicSubtitle,
      required this.musicTime});

  final String musicImage;
  final String musicTitle;
  final String musicSubtitle;
  final String musicTime;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Container(
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(4)),
        clipBehavior: Clip.antiAlias,
        child: Image.asset(musicImage),
      ),
      title: Text(musicTitle),
      subtitle: Row(children: [
        Icon(
          Icons.check_circle,
          size: 16,
        ),
        Text(musicSubtitle),
        Text(' · '),
        Text(musicTime),
      ]),
      trailing: Icon(Icons.more_vert),
    );
  }
}
