// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:assignment1/model/definitions.dart';

class Meanings {
  String partOfSpeech;
  List<Definitions> definitions;
  List<String> synonyms;
  List<String> antonyms;
  Meanings({
    required this.partOfSpeech,
    required this.definitions,
    required this.synonyms,
    required this.antonyms,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'partOfSpeech': partOfSpeech,
      'definitions': definitions.map((x) => x.toMap()).toList(),
      'synonyms': synonyms,
      'antonyms': antonyms,
    };
  }

  factory Meanings.fromMap(Map<String, dynamic> map) {
    return Meanings(
      partOfSpeech: map['partOfSpeech'] as String,
      definitions: List<Definitions>.from(
        (map['definitions'] as List<dynamic>).map<Definitions>(
          (x) => Definitions.fromMap(x as Map<String, dynamic>),
        ),
      ),
      synonyms: List<String>.from(map['synonyms'] as List<dynamic>),
      antonyms: List<String>.from(map['antonyms'] as List<dynamic>),
    );
  }

  String toJson() => json.encode(toMap());

  factory Meanings.fromJson(String source) =>
      Meanings.fromMap(json.decode(source) as Map<String, dynamic>);
}
