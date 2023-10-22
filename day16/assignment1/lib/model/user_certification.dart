// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:assignment1/model/user.dart';

class UserCertification {
  String token;
  User record;
  UserCertification({
    required this.token,
    required this.record,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'token': token,
      'record': record.toMap(),
    };
  }

  factory UserCertification.fromMap(Map<String, dynamic> map) {
    return UserCertification(
      token: map['token'] as String,
      record: User.fromMap(map['record'] as Map<String, dynamic>),
    );
  }

  String toJson() => json.encode(toMap());

  factory UserCertification.fromJson(String source) =>
      UserCertification.fromMap(json.decode(source) as Map<String, dynamic>);
}
