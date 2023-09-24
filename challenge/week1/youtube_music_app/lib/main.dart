import 'package:flutter/material.dart';
import 'package:youtube_music_app/musicInfo.dart';
import 'package:youtube_music_app/musicListTile.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.from(colorScheme: ColorScheme.dark()),
      home: MusicList(),
    );
  }
}

class MusicList extends StatelessWidget {
  const MusicList({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          shape: Border(
            bottom: BorderSide(color: Colors.grey.shade900, width: 1),
          ),
          backgroundColor: Colors.black,
          leading: Icon(Icons.keyboard_arrow_left),
          title: Text('아워리스트'),
          actions: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(Icons.airplay),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(Icons.search),
            )
          ],
        ),
        body: ListView(
          children: [
            InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => MusicInfo(
                              musicInfoImage:
                                  'assets/images/music_good_day.png',
                              musicAppBarText: 'Good Day',
                              musicInfoTitle: 'Good Day',
                              musicInfoSubtilte: 'Surfaces',
                            )));
              },
              child: InkWell(
                child: MusicListTile(
                  musicImage: 'assets/images/music_good_day.png',
                  musicTitle: 'Good Day',
                  musicSubtitle: 'Surfaces',
                  musicTime: '3:02',
                ),
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => MusicInfo(
                              musicInfoImage: 'assets/images/music_honesty.png',
                              musicAppBarText: 'Honesty ',
                              musicInfoTitle: 'Honesty',
                              musicInfoSubtilte: 'Pink Sweat\$',
                            )));
              },
              child: MusicListTile(
                musicImage: 'assets/images/music_honesty.png',
                musicTitle: 'Honesty',
                musicSubtitle: 'Pink Sweat\$',
                musicTime: '3:02',
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => MusicInfo(
                              musicInfoImage:
                                  'assets/images/music_these_days.png',
                              musicAppBarText:
                                  'These days(feat. Jess Glynne, Macklemore & Dan Caplen) ',
                              musicInfoTitle:
                                  'These days(feat. Jess Glynne, Macklemore & Dan Caplen)',
                              musicInfoSubtilte: 'Rudimental',
                            )));
              },
              child: MusicListTile(
                musicImage: 'assets/images/music_these_days.png',
                musicTitle:
                    'These days(feat. Jess Glynne, Macklemore & Dan Caplen)',
                musicSubtitle: 'Rudimental',
                musicTime: '3:02',
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => MusicInfo(
                              musicInfoImage:
                                  'assets/images/music_summer_is_for_falling_in_love.png',
                              musicAppBarText: 'ummer is for falling in love ',
                              musicInfoTitle: 'ummer is for falling in love',
                              musicInfoSubtilte:
                                  'Sarah Kang & Eye Love Brandon',
                            )));
              },
              child: MusicListTile(
                musicImage:
                    'assets/images/music_summer_is_for_falling_in_love.png',
                musicTitle: 'Summer is for falling in love',
                musicSubtitle: 'Sarah Kang & Eye Love Brandon',
                musicTime: '3:02',
              ),
            ),
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
            fixedColor: Colors.white,
            currentIndex: 2,
            type: BottomNavigationBarType.fixed,
            items: [
              BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.search), label: 'Search'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.library_music), label: 'List'),
            ]),
        bottomSheet: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            ListTile(
              tileColor: Colors.grey[900],
              leading: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4),
                  ),
                  clipBehavior: Clip.antiAlias,
                  child: Image.asset('assets/images/music_you_make_me.png')),
              title: Text('You make Me'),
              subtitle: Text('Day6'),
              trailing: Wrap(children: [
                Icon(Icons.play_arrow),
                SizedBox(
                  width: 8,
                ),
                Icon(Icons.skip_next)
              ]),
            ),
            Container(
              height: 3,
              width: 96,
              decoration: BoxDecoration(
                color: Colors.grey[700],
                border: Border.all(),
              ),
            ),
          ],
        ));
  }
}

class GoodDay extends StatefulWidget {
  const GoodDay({super.key});

  @override
  State<GoodDay> createState() => _GoodDayState();
}

class _GoodDayState extends State<GoodDay> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Good Day'),
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
                    BoxDecoration(borderRadius: BorderRadius.circular(40)),
                clipBehavior: Clip.antiAliasWithSaveLayer,
                child: Image.asset('assets/images/music_good_day.png'),
              ),
              Text(
                'Good Day',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              Text(
                'Surfaces',
                style: TextStyle(fontWeight: FontWeight.normal),
              ),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  InkWell(
                      onTap: () {
                        ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(content: Text('skip_previous')));
                      },
                      child: Icon(Icons.skip_previous)),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: InkWell(
                        onTap: () {
                          ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(content: Text('play_arrow')));
                        },
                        child: Icon(Icons.play_arrow)),
                  ),
                  InkWell(
                      onTap: () {
                        ScaffoldMessenger.of(context)
                            .showSnackBar(SnackBar(content: Text('skip_next')));
                      },
                      child: Icon(Icons.skip_next))
                ],
              )
            ],
          ),
        ));
  }
}
