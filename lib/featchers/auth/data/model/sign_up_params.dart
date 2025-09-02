import 'dart:io';
import 'package:my_salon/featchers/auth/data/model/gender_enum.dart';
import 'package:dio/dio.dart';

class SignUpParams {
  final String name;
  final String email;
  final String password;
  final String passwordConfirmation;
  final String phone;
  final GenderEnum gender;
  final File? image;

  SignUpParams({
    required this.passwordConfirmation,
    required this.name,
    required this.email,
    required this.password,
    required this.phone,
    required this.gender,
    this.image,
  });
  Future<Map<String, dynamic>> toMap() async {
    final Map<String, dynamic> map = {
      "name": name,
      "email": email,
      "password": password,
      "password_confirmation": passwordConfirmation,
      "phone": phone,
    };

    if (gender != GenderEnum.unknown) {
      map["gender"] = gender.toMap();
    }

    if (image != null) {
      map["image"] = await MultipartFile.fromFile(
        image!.path,
        filename: image!.path.split("/").last,
      );
    }

    return map;
  }
}
