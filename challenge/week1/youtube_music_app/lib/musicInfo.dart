import 'package:flutter/material.dart';

class MusicInfo extends StatefulWidget {
  const MusicInfo(
      {super.key,
      required this.musicInfoImage,
      required this.musicInfoTitle,
      required this.musicInfoSubtilte,
      required this.musicAppBarText});
  final String musicInfoImage;
  final String musicInfoTitle;
  final String musicInfoSubtilte;
  final String musicAppBarText;

  @override
  State<MusicInfo> createState() => _MusicInfoState();
}

class _MusicInfoState extends State<MusicInfo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.musicAppBarText),
          backgroundColor: Colors.black26,
          elevation: 0,
          shape: Border(bottom: BorderSide(color: Colors.white12, width: 1)),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 200,
                height: 200,
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(8)),
                clipBehavior: Clip.antiAliasWithSaveLayer,
                child: Image.asset(
                  widget.musicInfoImage,
                  fit: BoxFit.fill,
                ),
              ),
              Text(
                widget.musicInfoTitle,
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              Text(
                widget.musicInfoSubtilte,
                style: TextStyle(fontWeight: FontWeight.normal),
              ),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  InkWell(
                      onTap: () {
                        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                          content: Text('skip_previous'),
                          duration: Duration(seconds: 1),
                        ));
                      },
                      child: Icon(Icons.skip_previous)),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: InkWell(
                        onTap: () {
                          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                            content: Text('play_arrow'),
                            duration: Duration(seconds: 1),
                          ));
                        },
                        child: Icon(Icons.play_arrow)),
                  ),
                  InkWell(
                      onTap: () {
                        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                          content: Text('skip_next'),
                          duration: Duration(seconds: 1),
                        ));
                      },
                      child: Icon(Icons.skip_next))
                ],
              )
            ],
          ),
        ));
  }
}
