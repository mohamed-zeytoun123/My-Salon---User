import 'dart:convert';
import 'package:my_salon/featchers/auth/data/model/gender_enum.dart';

class UserDataModel {
  final int id;
  final String name;
  final String email;
  final String phone;
  final GenderEnum gender;
  final int active;
  final String image;
  final String type;
  final int userableId;
  final DateTime createdAt;

  UserDataModel({
    required this.id,
    required this.name,
    required this.email,
    required this.phone,
    required this.gender,
    required this.active,
    required this.image,
    required this.type,
    required this.userableId,
    required this.createdAt,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'name': name,
      'email': email,
      'phone': phone,
      'gender': gender.toMap(),
      'active': active,
      'image': image,
      'type': type,
      'userable_id': userableId,
      'created_at': createdAt.millisecondsSinceEpoch,
    };
  }

  factory UserDataModel.fromMap(Map<String, dynamic> map) {
    return UserDataModel(
      id: map['id'] ?? 0,
      name: map['name'] ?? "",
      email: map['email'] ?? "",
      phone: map['phone'] ?? "",
      gender: GenderEnumX.fromMap(map['gender']),
      active: map['active'] ?? 0,
      image: map['image'] ?? "",
      type: map['type'] ?? "",
      userableId: map['userable_id'] ?? 0,
      createdAt: DateTime.tryParse(map['created_at'].toString()) ??
          DateTime.fromMillisecondsSinceEpoch(0),
    );
  }

  String toJson() => json.encode(toMap());

  factory UserDataModel.fromJson(String source) =>
      UserDataModel.fromMap(json.decode(source) as Map<String, dynamic>);
}
