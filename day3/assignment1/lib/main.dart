import 'package:assignment1/MusicTile.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.from(colorScheme: ColorScheme.dark()),
      home: Scaffold(
        appBar: AppBar(
          shadowColor: Colors.white,
          leading: Icon(Icons.keyboard_arrow_down),
          title: Text('아워리스트'),
          elevation: 0,
          shape: Border(bottom: BorderSide(color: Colors.white12, width: 1)),
          actions: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(Icons.airplay),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(Icons.search),
            ),
          ],
        ),
        body: ListView(children: [
          MusicTile(
            image: 'assets/images/music_come_with_me.png',
            title: 'Come with me',
            subTitle: 'Surfaces 및 salem ilese',
            time: '3:00',
          ),
          MusicTile(
            title: 'Good day',
            subTitle: 'Surfaces',
            image: 'assets/images/music_good_day.png',
            time: '3:00',
          ),
          MusicTile(
            title: 'Honesty',
            subTitle: 'Pink Sweat\$',
            image: 'assets/images/music_honesty.png',
            time: '3:09',
          ),
          MusicTile(
            title: 'I Wish I Missed My Ex',
            subTitle: '마할리아 버크마',
            image: 'assets/images/music_i_wish_i_missed_my_ex.png',
            time: '3:24',
          ),
          MusicTile(
            title: 'Plastic Plants',
            subTitle: '마할리아 버크마',
            image: 'assets/images/music_plastic_plants.png',
            time: '3:20',
          ),
          MusicTile(
            title: 'Sucker for you',
            subTitle: '맷 테리',
            image: 'assets/images/music_sucker_for_you.png',
            time: '3:00',
          ),
          MusicTile(
            title: 'Summer is for falling in love',
            subTitle: 'Sarah Kang & Eye Love Brandon',
            image: 'assets/images/music_summer_is_for_falling_in_love.png',
            time: '3:00',
          ),
          MusicTile(
            title: 'These days(feat. Jess Glynne, Macklemore & Dan Caplen)',
            subTitle: 'Rudimental',
            image: 'assets/images/music_these_days.png',
            time: '3:00',
          ),
          MusicTile(
            title: 'You Make Me',
            subTitle: 'DAY6',
            image: 'assets/images/music_you_make_me.png',
            time: '3:00',
          ),
          MusicTile(
            title: 'Zombie Pop',
            subTitle: 'DRP IAN',
            image: 'assets/images/music_zombie_pop.png',
            time: '3:00',
          ),
        ]),
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          fixedColor: Colors.white,
          currentIndex: 2,
          items: [
            BottomNavigationBarItem(
              backgroundColor: Colors.white,
              icon: Icon(Icons.home),
              label: '홈',
            ),
            BottomNavigationBarItem(icon: Icon(Icons.search), label: '둘러보기'),
            BottomNavigationBarItem(
                icon: Icon(Icons.library_music), label: '보관함')
          ],
        ),
        bottomSheet: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              height: 64,
              child: Row(children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(4)),
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    child: Image.asset(
                      'assets/images/music_you_make_me.png',
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [Text('You Make Me'), Text('Day6')],
                  ),
                ),
                Spacer(),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Icon(Icons.play_arrow),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Icon(Icons.skip_next),
                ),
              ]),
              decoration: BoxDecoration(color: Colors.white12),
            ),
            Container(
              height: 1,
              alignment: Alignment.centerLeft,
              child: Container(
                width: 16,
                color: Colors.white,
              ),
            )
          ],
        ),
      ),
    );
  }
}
