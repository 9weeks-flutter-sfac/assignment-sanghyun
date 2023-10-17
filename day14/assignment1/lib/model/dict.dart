// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:assignment1/model/meanings.dart';

class Dict {
  String word;
  String phonetic;
  List<Meanings> meanings;
  Dict({
    required this.word,
    required this.phonetic,
    required this.meanings,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'word': word,
      'phonetic': phonetic,
      'meanings': meanings.map((x) => x.toMap()).toList(),
    };
  }

  factory Dict.fromMap(Map<String, dynamic> map) {
    return Dict(
      word: map['word'] as String,
      phonetic: map['phonetic'] as String,
      meanings: List<Meanings>.from(
        (map['meanings'] as List<dynamic>).map<Meanings>(
          (x) => Meanings.fromMap(x as Map<String, dynamic>),
        ),
      ),
    );
  }

  String toJson() => json.encode(toMap());

  factory Dict.fromJson(String source) =>
      Dict.fromMap(json.decode(source) as Map<String, dynamic>);
}
