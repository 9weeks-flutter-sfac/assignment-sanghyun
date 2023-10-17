import 'dart:convert';

// ignore_for_file: public_member_api_docs, sort_constructors_first
class Definitions {
  String definition;
  List<String> synonyms;
  List<String> antonyms;
  String? example;
  Definitions({
    required this.definition,
    required this.synonyms,
    required this.antonyms,
    this.example,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'definition': definition,
      'synonyms': synonyms,
      'antonyms': antonyms,
      'example': example,
    };
  }

  factory Definitions.fromMap(Map<String, dynamic> map) {
    return Definitions(
      definition: map['definition'] as String,
      synonyms: List<String>.from(map['synonyms'] as List<dynamic>),
      antonyms: List<String>.from(map['antonyms'] as List<dynamic>),
      example: map['example'] != null ? map['example'] as String : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory Definitions.fromJson(String source) =>
      Definitions.fromMap(json.decode(source) as Map<String, dynamic>);
}
