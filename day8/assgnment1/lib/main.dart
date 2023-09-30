import 'package:flutter/material.dart';
import 'package:dio/dio.dart';
import 'package:shimmer/shimmer.dart';
import 'dart:convert';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

RefreshController _refreshController = RefreshController(initialRefresh: false);
var dio = Dio();

class _MyAppState extends State<MyApp> {
  bool isCheck = false;
  void _onRefresh() async {
    await Future.delayed(Duration(milliseconds: 1000));

    _refreshController.refreshCompleted();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('8일차 과제'),
          centerTitle: true,
        ),
        body: FutureBuilder(
            future: dio.get(
              "https://sniperfactory.com/sfac/http_day16_dogs",
            ),
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.done) {
                final parsedData = json.decode(snapshot.data.toString());
                final body = parsedData['body'];
                if (isCheck) {
                  return Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('인터넷 연결 확인중입니다'),
                        CircularProgressIndicator(),
                      ],
                    ),
                  );
                }
                return SmartRefresher(
                    enablePullDown: true,
                    header: WaterDropHeader(),
                    controller: _refreshController,
                    onRefresh: _onRefresh,
                    child: GridView.builder(
                      itemCount: body.length,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                      ),
                      itemBuilder: (context, index) {
                        var img = body[index]["url"];
                        var msg = body[index]["msg"];
                        return Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(16),
                                color: Colors.white,
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black12,
                                    offset: Offset(2, 2),
                                    spreadRadius: 1,
                                  )
                                ]),
                            child: Column(
                              children: [
                                Expanded(
                                    child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Container(
                                    width: 200,
                                    clipBehavior: Clip.antiAlias,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(16),
                                    ),
                                    child: Image.network(
                                      img,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                )),
                                Text(msg),
                                Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Icon(Icons.message),
                                    ),
                                    Spacer()
                                  ],
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                    ));
              }
              return GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2),
                  itemBuilder: (context, index) {
                    return Shimmer.fromColors(
                      child: Container(color: Colors.white),
                      highlightColor: Colors.white,
                      baseColor: Colors.grey,
                    );
                  });
            }),
        floatingActionButton: FloatingActionButton(
          onPressed: () async {
            {
              setState(() {
                isCheck = true;
              });

              await Future.delayed(Duration(seconds: 1));
              await Connectivity().checkConnectivity();

              setState(() {
                isCheck = false;
              });
            }
          },
          child: Icon(Icons.wifi_find_sharp),
        ),
      ),
    );
  }
}
