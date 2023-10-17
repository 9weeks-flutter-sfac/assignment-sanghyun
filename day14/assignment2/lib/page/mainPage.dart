import 'package:assignment2/model/dict.dart';
import 'package:assignment2/widget/DictCard.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

Dio dio = Dio();
Dict? dict;
// search(String query) async {
//   var url = 'https://api.dictionaryapi.dev/api/v2/entries/en/';
//   var res = await dio.get(url + query);
//   print(res.data);
// }

Future<List<Dict>> readData(String query) async {
  var url = 'https://api.dictionaryapi.dev/api/v2/entries/en/$query';
  try {
    var res = await dio.get(url);
    if (res.statusCode == 200) {
      var data = List<Map<String, dynamic>>.from(res.data);
      var result = data.map((e) => Dict.fromMap(e)).toList();
      return result;
    }
  } catch (e) {
    dict = null;
  }
  return [];
}

class MainPage extends StatefulWidget {
  const MainPage({
    super.key,
  });

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  String word = '';
  @override
  Widget build(BuildContext context) {
    TextEditingController controller = TextEditingController();
    return Scaffold(
      appBar: AppBar(
        title: Text('Dictionary App'),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: controller,
              onSubmitted: (v) {
                setState(() {
                  word = v;
                });
                readData(word);
              },
              decoration: InputDecoration(
                  hintText: 'Search',
                  suffixIcon: Icon(Icons.search),
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white)),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white))),
            ),
          ),
          if (word != '')
            Expanded(
              child: FutureBuilder<List<Dict>>(
                  future: readData(word),
                  builder: (context, snapshot) {
                    if (snapshot.connectionState == ConnectionState.done) {
                      return ListView.builder(
                        shrinkWrap: true,
                        physics: NeverScrollableScrollPhysics(),
                        itemCount: snapshot.data!.length,
                        itemBuilder: (context, index) {
                          return Column(
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: [
                              SingleChildScrollView(
                                  child: DictCard(dict: snapshot.data![index])),
                            ],
                          );
                        },
                      );
                    }
                    return Center(child: CircularProgressIndicator());
                  }),
            ),
        ],
      ),
    );
  }
}
