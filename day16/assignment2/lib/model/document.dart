import 'dart:convert';

// ignore_for_file: public_member_api_docs, sort_constructors_first
class Document {
  String id;
  String collectionId;
  String collectionName;
  String created;
  String updated;
  String title;
  String content;
  String sec_level;
  String attachment;
  String attachment_url;
  Document({
    required this.id,
    required this.collectionId,
    required this.collectionName,
    required this.created,
    required this.updated,
    required this.title,
    required this.content,
    required this.sec_level,
    required this.attachment,
    required this.attachment_url,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'collectionId': collectionId,
      'collectionName': collectionName,
      'created': created,
      'updated': updated,
      'title': title,
      'content': content,
      'sec_level': sec_level,
      'attachment': attachment,
      'attachment_url': attachment_url,
    };
  }

  factory Document.fromMap(Map<String, dynamic> map) {
    return Document(
      id: map['id'] as String,
      collectionId: map['collectionId'] as String,
      collectionName: map['collectionName'] as String,
      created: map['created'] as String,
      updated: map['updated'] as String,
      title: map['title'] as String,
      content: map['content'] as String,
      sec_level: map['sec_level'] as String,
      attachment: map['attachment'] as String,
      attachment_url: map['attachment_url'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory Document.fromJson(String source) =>
      Document.fromMap(json.decode(source) as Map<String, dynamic>);
}
