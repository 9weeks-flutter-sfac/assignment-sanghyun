// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class Sniperfactory {
  String name;
  String description;
  String image;
  int price;
  Sniperfactory({
    required this.name,
    required this.description,
    required this.image,
    required this.price,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'description': description,
      'image': image,
      'price': price,
    };
  }

  factory Sniperfactory.fromMap(Map<String, dynamic> map) {
    return Sniperfactory(
      name: map['name'] as String,
      description: map['description'] as String,
      image: map['image'] as String,
      price: map['price'] as int,
    );
  }

  String toJson() => json.encode(toMap());

  factory Sniperfactory.fromJson(String source) =>
      Sniperfactory.fromMap(json.decode(source) as Map<String, dynamic>);
}
