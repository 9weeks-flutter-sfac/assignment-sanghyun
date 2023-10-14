import 'dart:convert';

// ignore_for_file: public_member_api_docs, sort_constructors_first
class Dogs {
  String message;
  String status;
  Dogs({
    required this.message,
    required this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'message': message,
      'status': status,
    };
  }

  factory Dogs.fromMap(Map<String, dynamic> map) {
    return Dogs(
      message: map['message'] as String,
      status: map['status'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory Dogs.fromJson(String source) =>
      Dogs.fromMap(json.decode(source) as Map<String, dynamic>);
}
