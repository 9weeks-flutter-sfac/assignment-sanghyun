import 'dart:convert';

// ignore_for_file: public_member_api_docs, sort_constructors_first
class PlaceHolder {
  int userId;
  int id;
  String title;
  String body;

  PlaceHolder({
    required this.userId,
    required this.id,
    required this.title,
    required this.body,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'userId': userId,
      'id': id,
      'title': title,
      'body': body,
    };
  }

  factory PlaceHolder.fromMap(Map<String, dynamic> map) {
    return PlaceHolder(
      userId: map['userId'] as int,
      id: map['id'] as int,
      title: map['title'] as String,
      body: map['body'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory PlaceHolder.fromJson(String source) =>
      PlaceHolder.fromMap(json.decode(source) as Map<String, dynamic>);
}
