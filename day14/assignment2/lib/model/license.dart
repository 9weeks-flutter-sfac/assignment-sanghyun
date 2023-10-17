import 'dart:convert';

// ignore_for_file: public_member_api_docs, sort_constructors_first
class License {
  String name;
  String? Url;
  License({
    required this.name,
    required this.Url,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'Url': Url,
    };
  }

  factory License.fromMap(Map<String, dynamic> map) {
    return License(
      name: map['name'] as String,
      Url: map['Url'] != null ? map['Url'] as String : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory License.fromJson(String source) =>
      License.fromMap(json.decode(source) as Map<String, dynamic>);
}
