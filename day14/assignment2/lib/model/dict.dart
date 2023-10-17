// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:assignment2/model/license.dart';
import 'package:assignment2/model/meanings.dart';
import 'package:assignment2/model/phonetics.dart';

class Dict {
  String word;
  String phonetic;
  List<Phonetics> phonetics;
  List<Meanings> meanings;
  License license;
  List<String> sourceUrls;
  Dict({
    required this.word,
    required this.phonetic,
    required this.phonetics,
    required this.meanings,
    required this.license,
    required this.sourceUrls,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'word': word,
      'phonetic': phonetic,
      'phonetics': phonetics.map((x) => x.toMap()).toList(),
      'meanings': meanings.map((x) => x.toMap()).toList(),
      'license': license.toMap(),
      'sourceUrls': sourceUrls,
    };
  }

  factory Dict.fromMap(Map<String, dynamic> map) {
    return Dict(
      word: map['word'] as String,
      phonetic: map['phonetic'] as String,
      phonetics: List<Phonetics>.from(
        (map['phonetics'] as List<dynamic>).map<Phonetics>(
          (x) => Phonetics.fromMap(x as Map<String, dynamic>),
        ),
      ),
      meanings: List<Meanings>.from(
        (map['meanings'] as List<dynamic>).map<Meanings>(
          (x) => Meanings.fromMap(x as Map<String, dynamic>),
        ),
      ),
      license: License.fromMap(map['license'] as Map<String, dynamic>),
      sourceUrls: List<String>.from(map['sourceUrls'] as List<dynamic>),
    );
  }

  String toJson() => json.encode(toMap());

  factory Dict.fromJson(String source) =>
      Dict.fromMap(json.decode(source) as Map<String, dynamic>);
}
