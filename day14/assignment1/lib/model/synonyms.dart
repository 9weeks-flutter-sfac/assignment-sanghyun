import 'dart:convert';

// ignore_for_file: public_member_api_docs, sort_constructors_first
class Synonyms {
  String definition;
  List<String> synonyms;
  List<String> antonyms;
  String example;
  Synonyms({
    required this.definition,
    required this.synonyms,
    required this.antonyms,
    required this.example,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'definition': definition,
      'synonyms': synonyms,
      'antonyms': antonyms,
      'example': example,
    };
  }

  factory Synonyms.fromMap(Map<String, dynamic> map) {
    return Synonyms(
      definition: map['definition'] as String,
      synonyms: List<String>.from(map['synonyms'] as List<String>),
      antonyms: List<String>.from(map['antonyms'] as List<String>),
      example: map['example'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory Synonyms.fromJson(String source) =>
      Synonyms.fromMap(json.decode(source) as Map<String, dynamic>);
}
