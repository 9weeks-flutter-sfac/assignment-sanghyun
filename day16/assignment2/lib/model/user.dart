import 'dart:convert';

import 'package:assignment2/model/record.dart';

// ignore_for_file: public_member_api_docs, sort_constructors_first
class User {
  String? token;
  Record? record;
  User({
    this.token,
    this.record,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'token': token,
      'record': record?.toMap(),
    };
  }

  factory User.fromMap(Map<String, dynamic> map) {
    return User(
      token: map['token'] != null ? map['token'] as String : null,
      record: map['record'] != null
          ? Record.fromMap(map['record'] as Map<String, dynamic>)
          : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory User.fromJson(String source) =>
      User.fromMap(json.decode(source) as Map<String, dynamic>);

  static from(data) {}
}
