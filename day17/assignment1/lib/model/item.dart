import 'dart:convert';

// ignore_for_file: public_member_api_docs, sort_constructors_first
class Item {
  String avatar;

  String name;

  String username;
  Item({
    required this.avatar,
    required this.name,
    required this.username,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'avatar': avatar,
      'name': name,
      'username': username,
    };
  }

  factory Item.fromMap(Map<String, dynamic> map) {
    return Item(
      avatar: map['avatar'] as String,
      name: map['name'] as String,
      username: map['username'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory Item.fromJson(String source) =>
      Item.fromMap(json.decode(source) as Map<String, dynamic>);
}
