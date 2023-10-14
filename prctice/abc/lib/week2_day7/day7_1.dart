import 'package:flutter/material.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

// “아래로 당겨서 새로고침”은 UX 관점에서 매우 편리하고 새로운 데이터를 요청하고 보여주기 위한 좋은 수단이된다. 지정된 패키지를 활용하여 아래 결과와 동일한 결과물을 만드시오.
// - 아래로 당기면 새로운 랜덤 이미지로 바뀐다.
// - pull_to_refresh 패키지를 사용할 때 **header: WaterDropHeader(),를 활용한다.

final imageUrl = [
  "https://images.pexels.com/photos/1108099/pexels-photo-1108099.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
  "https://images.pexels.com/photos/33053/dog-young-dog-small-dog-maltese.jpg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
  "https://images.pexels.com/photos/2664417/pexels-photo-2664417.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
  "https://images.pexels.com/photos/10361796/pexels-photo-10361796.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
  "https://images.pexels.com/photos/9409823/pexels-photo-9409823.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"
];

class day7_1 extends StatefulWidget {
  const day7_1({super.key});

  @override
  State<day7_1> createState() => _day7_1State();
}

class _day7_1State extends State<day7_1> {
  var refreshController = RefreshController();

  void _onRefresh() async {
    await Future.delayed(Duration(milliseconds: 1000));

    refreshController.refreshCompleted();
    setState(() {
      imageUrl.shuffle();
    });
    print(imageUrl);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('7일차 과제 1번')),
      body: SmartRefresher(
        controller: refreshController,
        onRefresh: _onRefresh,
        child: Center(
          child: Container(
            child: Image.network(imageUrl[0]),
          ),
        ),
      ),
    );
  }
}
