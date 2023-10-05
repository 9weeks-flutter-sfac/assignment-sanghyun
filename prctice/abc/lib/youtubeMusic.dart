import 'package:abc/MusicTile.dart';
import 'package:flutter/material.dart';

class youtubeMusic extends StatelessWidget {
  const youtubeMusic({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        shape: Border(bottom: BorderSide(color: Colors.grey)),
        backgroundColor: Colors.grey[400],
        elevation: 0,
        title: Text('아워리스트'),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(Icons.airplay),
            ),
          ),
          Icon(Icons.search)
        ],
      ),
      body: ListView(
        children: [
          MusicTile(
            img: 'assets/youtubeMusic/music_come_with_me.png',
            musicName: 'Come with me',
            artist: 'Surfaces 및 salem ilese',
            time: '3:00',
          ),
          MusicTile(
            img: 'assets/youtubeMusic/music_good_day.png',
            musicName: 'Good day',
            artist: 'Surfaces',
            time: '3:00',
          ),
          MusicTile(
            img: 'assets/youtubeMusic/music_honesty.png',
            musicName: 'Honesty',
            artist: 'Pink Sweat\$',
            time: '3:09',
          ),
          MusicTile(
            img: 'assets/youtubeMusic/music_i_wish_i_missed_my_ex.png',
            musicName: 'I Wish I Missed My Ex',
            artist: '마할리아 버크마',
            time: '3:24',
          ),
          MusicTile(
            img: 'assets/youtubeMusic/music_plastic_plants.png',
            musicName: 'Plastic Plants',
            artist: '마할리아 버크마',
            time: '3:20',
          ),
          MusicTile(
            img: 'assets/youtubeMusic/music_sucker_for_you.png',
            musicName: 'Sucker for you',
            artist: '맷 테리',
            time: '3:24',
          ),
          MusicTile(
            img: 'assets/youtubeMusic/music_summer_is_for_falling_in_love.png',
            musicName: 'Summer is for falling in love',
            artist: 'Sarah Kang & Eye Love Brandon',
            time: '3:00',
          ),
          MusicTile(
            img: 'assets/youtubeMusic/music_these_days.png',
            musicName: 'These days(feat. Jess Glynne, Macklemore & Dan Caplen)',
            artist: 'Rudimental',
            time: '3:00',
          ),
          MusicTile(
            img: 'assets/youtubeMusic/music_you_make_me.png',
            musicName: 'You Make Me',
            artist: 'DAY6',
            time: '3:00',
          ),
          MusicTile(
            img: 'assets/youtubeMusic/music_zombie_pop.png',
            musicName: 'Zombie Pop',
            artist: 'DRP IAN',
            time: '3:00',
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: 2,
          selectedItemColor: Colors.black,
          backgroundColor: Colors.grey[400],
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: '홈'),
            BottomNavigationBarItem(icon: Icon(Icons.search), label: '둘러보기'),
            BottomNavigationBarItem(
                icon: Icon(Icons.library_music), label: '보관함'),
          ]),
      bottomSheet: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            ListTile(
              tileColor: Colors.grey[400],
              leading: Container(
                  clipBehavior: Clip.antiAlias,
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(4)),
                  child:
                      Image.asset('assets/youtubeMusic/music_you_make_me.png')),
              title: Text('You Make Me'),
              subtitle: Text('DAY6'),
              trailing: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [Icon(Icons.play_arrow), Icon(Icons.skip_next)]),
            ),
            Container(
              height: 1,
              child: Container(
                width: 80,
                color: Colors.black,
              ),
            ),
          ]),
    );
  }
}
