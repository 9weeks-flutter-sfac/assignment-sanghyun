import 'dart:convert';

// ignore_for_file: public_member_api_docs, sort_constructors_first
class Signup {
  String username;
  String email;
  String password;
  String passwordConfirm;
  Signup({
    required this.username,
    required this.email,
    required this.password,
    required this.passwordConfirm,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'username': username,
      'email': email,
      'password': password,
      'passwordConfirm': passwordConfirm,
    };
  }

  factory Signup.fromMap(Map<String, dynamic> map) {
    return Signup(
      username: map['username'] as String,
      email: map['email'] as String,
      password: map['password'] as String,
      passwordConfirm: map['passwordConfirm'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory Signup.fromJson(String source) =>
      Signup.fromMap(json.decode(source) as Map<String, dynamic>);
}
