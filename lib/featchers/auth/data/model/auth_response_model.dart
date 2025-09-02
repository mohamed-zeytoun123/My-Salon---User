import 'dart:convert';
import 'package:my_salon/featchers/auth/data/model/user_data_model.dart';

class AuthResponseModel {
  final String token;
  final String role;
  final UserDataModel user;

  AuthResponseModel({
    required this.token,
    required this.role,
    required this.user,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'token': token,
      'role': role,
      'user': user.toMap(),
    };
  }

  factory AuthResponseModel.fromMap(Map<String, dynamic> map) {
    return AuthResponseModel(
      token: map['data']['token'] ?? "",
      role: map['data']['role'] ?? "",
      user: UserDataModel.fromMap(map['data']['user'] as Map<String, dynamic>),
    );
  }

  String toJson() => json.encode(toMap());

  factory AuthResponseModel.fromJson(String source) =>
      AuthResponseModel.fromMap(json.decode(source) as Map<String, dynamic>);
}
