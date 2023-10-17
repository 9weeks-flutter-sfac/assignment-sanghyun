// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:assignment1/model/license.dart';

class Phonetics {
  String text;
  String audio;
  String sourceUrl;
  License license;
  Phonetics({
    required this.text,
    required this.audio,
    required this.sourceUrl,
    required this.license,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'text': text,
      'audio': audio,
      'sourceUrl': sourceUrl,
      'license': license.toMap(),
    };
  }

  factory Phonetics.fromMap(Map<String, dynamic> map) {
    return Phonetics(
      text: map['text'] as String,
      audio: map['audio'] as String,
      sourceUrl: map['sourceUrl'] as String,
      license: License.fromMap(map['license'] as Map<String, dynamic>),
    );
  }

  String toJson() => json.encode(toMap());

  factory Phonetics.fromJson(String source) =>
      Phonetics.fromMap(json.decode(source) as Map<String, dynamic>);
}
