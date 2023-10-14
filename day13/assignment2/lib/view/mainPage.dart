import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:assignment2/model/placeHolder.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  Future<List<PlaceHolder>?> getData() async {
    var dio = Dio();
    var url = 'https://jsonplaceholder.typicode.com/posts';
    var res = await dio.get(url);
    if (res.statusCode == 200) {
      List<Map<String, dynamic>> result =
          List<Map<String, dynamic>>.from(res.data);
      List<PlaceHolder> resultFinal =
          result.map((e) => PlaceHolder.fromMap(e)).toList();
      return resultFinal;
    }
    return null;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: FutureBuilder<List<PlaceHolder>?>(
          future: getData(),
          builder: (context, snapshot) => ListView.separated(
            separatorBuilder: (context, index) {
              if (index % 5 == 4) {
                return Text(
                  'Post ${index + 2} ~ ${index + 6}',
                  style: TextStyle(fontSize: 36),
                );
              }
              return Text('');
            },
            itemCount: snapshot.data!.length,
            itemBuilder: (context, index) => InkWell(
              onTap: () {
                showModalBottomSheet(
                    context: context,
                    builder: (context) => Container(
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text(
                                snapshot.data![index].title,
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              Text(snapshot.data![index].body),
                            ],
                          ),
                        ));
              },
              child: ListTile(
                leading: CircleAvatar(
                    child: Text(snapshot.data![index].id.toString())),
                title: Text(snapshot.data![index].title),
                subtitle: Text(snapshot.data![index].body),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
