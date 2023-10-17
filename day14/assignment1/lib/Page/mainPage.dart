import 'package:assignment1/model/dict.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

var myController = TextEditingController();

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  Future<List<Dict>> readData() async {
    var dio = Dio();
    var url = 'https://api.dictionaryapi.dev/api/v2/entries/en/';
    var res = await dio.get(url);
    if (res.data) {
      var result = List<Map<String, dynamic>>.from(res.data);
      var resultFinal = result.map((e) => Dict.fromMap(e)).toList();

      return resultFinal;
    }
    return [];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Dictionary App')),
      body: Column(children: [
        TextField(
          controller: myController,
          onSubmitted: (v) {},
        ),
        Flexible(
          child: SizedBox(
            child: FutureBuilder<List<Dict>>(
              future: readData(),
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.done) {
                  return ListView.builder(
                    itemCount: snapshot.data!.length,
                    itemBuilder: (context, index) => Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(snapshot.data![index].word),
                        Text(snapshot.data![index].phonetic),
                        Text(
                            snapshot.data![index].meanings[index].partOfSpeech),
                        Text(snapshot.data![index].meanings[index]
                            .definitions[index].definition),
                        if (snapshot.data![index].meanings[index]
                            .definitions[index].antonyms.isNotEmpty)
                          Text(snapshot.data![index].meanings[index]
                              .definitions[index].antonyms[index]),
                        if (snapshot.data![index].meanings[index]
                            .definitions[index].synonyms.isNotEmpty)
                          Text(snapshot.data![index].meanings[index]
                              .definitions[index].synonyms[index]),
                      ],
                    ),
                  );
                }
                return CircularProgressIndicator();
              },
            ),
          ),
        )
      ]),
    );
  }
}
