import 'package:abc/week2_day6/contactList.dart';
import 'package:abc/week2_day6/contactDetailpage.dart';
import 'package:flutter/material.dart';

// - 스크린 제외 두 페이지가 존재합니다.
//     - 연락처 상세보기 페이지, ContactDetailPage
//     - 메인페이지, MainPage
// - MainPage는 3개의 스크린을 가집니다.
//     - 연락처, ContactScreen
//     - 통화기록, HistoryScreen
//     - 설정, SettingScreen
// - BottomNavigationBar의 요소를 클릭시 해당 스크린으로 바뀌어 보여집니다.
// - ContactScreen의 커스텀위젯인 ContactTile을 누르면 연락처 상세보기 페이지로 이동됩니다.
// - ContactDetailPage 안에도 ContactTile 위젯이 포함되어 있습니다.

class contactUpgrade extends StatelessWidget {
  const contactUpgrade({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
          itemCount: contact.length,
          itemBuilder: (context, index) {
            return InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => contackDetailpage(
                              index: index,
                            )));
              },
              child: ListTile(
                title: Text(contact[index]['name']),
                subtitle: Text(contact[index]["phone"]),
                leading: CircleAvatar(
                    foregroundImage: NetworkImage(contact[index]['img'])),
                trailing: Icon(Icons.call),
              ),
            );
          }),
    );
  }
}
