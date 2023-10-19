import 'dart:convert';
import 'package:assignment1/model/record.dart';

// ignore_for_file: public_member_api_docs, sort_constructors_first
class Login {
  String token;
  Record record;
  Login({
    required this.token,
    required this.record,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'token': token,
      'record': record.toMap(),
    };
  }

  factory Login.fromMap(Map<String, dynamic> map) {
    return Login(
      token: map['token'] as String,
      record: Record.fromMap(map['record'] as Map<String, dynamic>),
    );
  }

  String toJson() => json.encode(toMap());

  factory Login.fromJson(String source) =>
      Login.fromMap(json.decode(source) as Map<String, dynamic>);
}
