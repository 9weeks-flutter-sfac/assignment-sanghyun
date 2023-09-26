import 'package:assignment1/SecoundPage.dart';

import 'package:flutter/material.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({super.key});

  @override
  State<FirstPage> createState() => _FirstPageState();
}

final imageUrl = [
  "https://images.pexels.com/photos/1108099/pexels-photo-1108099.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
  "https://images.pexels.com/photos/33053/dog-young-dog-small-dog-maltese.jpg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
  "https://images.pexels.com/photos/2664417/pexels-photo-2664417.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
  "https://images.pexels.com/photos/10361796/pexels-photo-10361796.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
  "https://images.pexels.com/photos/9409823/pexels-photo-9409823.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"
];
RefreshController _refreshController = RefreshController(initialRefresh: false);

class _FirstPageState extends State<FirstPage> {
  void _onRefresh() async {
    await Future.delayed(Duration(milliseconds: 1000));

    _refreshController.refreshCompleted();
    setState(() {
      imageUrl.shuffle();
    });
  }

  @override
  Widget build(BuildContext context) {
    return PageView(
      children: [
        Scaffold(
          appBar: AppBar(
            title: Text('7일차 과제 1번'),
          ),
          body: SmartRefresher(
            enablePullDown: true,
            controller: _refreshController,
            header: WaterDropHeader(),
            onRefresh: _onRefresh,
            child: Center(
                child: Container(
                    clipBehavior: Clip.antiAlias,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(24),
                    ),
                    child: Image.network(imageUrl[0]))),
          ),
        ),
        SecoundPage()
      ],
    );
  }
}
