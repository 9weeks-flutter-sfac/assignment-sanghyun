import 'package:flutter/material.dart';

//AricleTile 라는 새로운 폴더생성
class ArticleTileState extends StatefulWidget {
  const ArticleTileState(
      {super.key,
      required this.title,
      required this.author,
      required this.content});
  final String title;
  final String author;
  final String content;

  @override
  State<ArticleTileState> createState() => _ArticleTileStateState();
}

class _ArticleTileStateState extends State<ArticleTileState> {
  bool isExpended = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          title: Text(widget.title),
          subtitle: Text(widget.author),
          onTap: () {
            isExpended = true; //만약 눌렀을때마다 상태를 바꾸고 싶으면 isExpended = !isExpended
            setState(() {});
          },
        ),
        if (isExpended) Text(widget.content),
      ],
    );
  }
}

// 메인페이지에서 AticleTile를 붙이기
// AricleTile(
//   title: '타이틀'
//   author: '서브타이틀'
//   content: 'onTap했을때 나온다'
// )