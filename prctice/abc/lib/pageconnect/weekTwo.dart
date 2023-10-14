import 'package:flutter/material.dart';

// - 3가지 이상의 기분을 담고있는 위젯을 페이징이 가능하게 만드세요. (gradient, radius 필수)
// - **ListTile 위젯을 사용하지 않고**, 동일한 결과물을 만드세요.
//     - 위와 아래를 구분하는 구분선은 **Divider** 위젯입니다.

class WeekTwo extends StatelessWidget {
  const WeekTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '오늘하루는',
              style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
            ),
            Text(
              '어땠나요',
              style: TextStyle(fontSize: 24),
            ),
            SizedBox(
              width: 280,
              height: 200,
              child: PageView(children: [
                Container(
                  child: Center(
                      child: Text(
                    '우울함',
                    style: TextStyle(fontSize: 24, color: Colors.white),
                  )),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    gradient: LinearGradient(
                        begin: Alignment.centerLeft,
                        end: Alignment.centerRight,
                        colors: [Colors.black, Colors.white]),
                  ),
                ),
                Container(
                  child: Center(
                      child: Text(
                    '행복함',
                    style: TextStyle(fontSize: 24, color: Colors.white),
                  )),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    gradient: LinearGradient(
                        begin: Alignment.centerLeft,
                        end: Alignment.centerRight,
                        colors: [
                          Colors.yellow.shade900,
                          Colors.yellow.shade500
                        ]),
                  ),
                ),
                Container(
                  child: Center(
                      child: Text(
                    '상쾌함',
                    style: TextStyle(fontSize: 24, color: Colors.white),
                  )),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    gradient: LinearGradient(
                        begin: Alignment.centerLeft,
                        end: Alignment.centerRight,
                        colors: [Colors.blue, Colors.green]),
                  ),
                )
              ]),
            ),
            Divider(),
            Container(
              height: 100,
              color: Colors.blue.shade400,
              child: Row(children: []),
            )
          ],
        ),
      ),
    ));
  }
}
