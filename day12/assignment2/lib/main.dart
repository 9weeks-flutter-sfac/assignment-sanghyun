import 'dart:convert';

import 'package:assignment2/sniperFactory.dart';
import 'package:flutter/material.dart';
import 'package:dio/dio.dart';

final dio = Dio();

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Future<Sniperfactory> getData() async {
    Dio dio = Dio();
    var res = await dio.get('https://sniperfactory.com/sfac/http_json_data');
    try {
      return Sniperfactory.fromMap(res.data['item']);
    } catch (e) {
      throw Exception(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
            child: Center(
                child: FutureBuilder<Sniperfactory>(
                    future: getData(),
                    builder: (context, snapshot) {
                      if (snapshot.connectionState == ConnectionState.done) {
                        return SizedBox(
                          width: MediaQuery.of(context).size.width / 2,
                          child: Card(
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: [
                                Image.network(
                                  snapshot.data!.image,
                                  fit: BoxFit.cover,
                                ),
                                SizedBox(
                                  width: 8,
                                ),
                                Text(
                                  snapshot.data!.name,
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 8),
                                  child: Text(
                                    snapshot.data!.description,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: ElevatedButton(
                                      onPressed: () {},
                                      child: Text(
                                          snapshot.data!.price.toString() +
                                              '원 결제하고 등록')),
                                )
                              ],
                            ),
                          ),
                        );
                      }
                      return Text('데이터없음');
                    }))),
      ),
    );
  }
}
