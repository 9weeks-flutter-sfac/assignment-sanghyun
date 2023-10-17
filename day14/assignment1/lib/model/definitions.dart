import 'dart:convert';

// ignore_for_file: public_member_api_docs, sort_constructors_first
class Definitions {
  String definition;
  List<String> synonyms;
  List<String> antonyms;
  Definitions({
    required this.definition,
    required this.synonyms,
    required this.antonyms,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'definition': definition,
      'synonyms': synonyms,
      'antonyms': antonyms,
    };
  }

  factory Definitions.fromMap(Map<String, dynamic> map) {
    return Definitions(
      definition: map['definition'] as String,
      synonyms: List<String>.from(map['synonyms'] as List<dynamic>),
      antonyms: List<String>.from(map['antonyms'] as List<dynamic>),
    );
  }

  String toJson() => json.encode(toMap());

  factory Definitions.fromJson(String source) =>
      Definitions.fromMap(json.decode(source) as Map<String, dynamic>);
}
