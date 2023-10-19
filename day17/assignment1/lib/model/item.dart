import 'dart:convert';

// ignore_for_file: public_member_api_docs, sort_constructors_first
class Item {
  String avatar;
  String collectionId;
  String collectionName;
  String created;
  bool emailVisibility;
  String id;
  String name;
  String updated;
  String username;
  bool verified;
  Item({
    required this.avatar,
    required this.collectionId,
    required this.collectionName,
    required this.created,
    required this.emailVisibility,
    required this.id,
    required this.name,
    required this.updated,
    required this.username,
    required this.verified,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'avatar': avatar,
      'collectionId': collectionId,
      'collectionName': collectionName,
      'created': created,
      'emailVisibility': emailVisibility,
      'id': id,
      'name': name,
      'updated': updated,
      'username': username,
      'verified': verified,
    };
  }

  factory Item.fromMap(Map<String, dynamic> map) {
    return Item(
      avatar: map['avatar'] as String,
      collectionId: map['collectionId'] as String,
      collectionName: map['collectionName'] as String,
      created: map['created'] as String,
      emailVisibility: map['emailVisibility'] as bool,
      id: map['id'] as String,
      name: map['name'] as String,
      updated: map['updated'] as String,
      username: map['username'] as String,
      verified: map['verified'] as bool,
    );
  }

  String toJson() => json.encode(toMap());

  factory Item.fromJson(String source) =>
      Item.fromMap(json.decode(source) as Map<String, dynamic>);
}
