// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:io';

import 'package:my_salon/core/network/failure.dart';
import 'package:my_salon/core/util/response_status_enum.dart';
import 'package:my_salon/featchers/auth/data/model/auth_response_model.dart';
import 'package:my_salon/featchers/auth/data/model/gender_enum.dart';

class AuthState {
  final ResponseStatusEnum loginState;
  final ResponseStatusEnum signupState;
  final AuthResponseModel? model;
  final Failure? loginError;
  final Failure? signupError;
  final File? image;
  final GenderEnum gender;

  AuthState({
    this.loginState = ResponseStatusEnum.initial,
    this.signupState = ResponseStatusEnum.initial,
    this.image,
    this.gender = GenderEnum.unknown,
    this.model,
    this.loginError,
    this.signupError,
  });

  AuthState copyWith(
      {ResponseStatusEnum? loginState,
      ResponseStatusEnum? signupState,
      AuthResponseModel? model,
      Failure? loginError,
      Failure? signupError,
      File? image,
      GenderEnum? gender}) {
    return AuthState(
      gender: gender ?? this.gender,
      loginState: loginState ?? this.loginState,
      signupState: signupState ?? this.signupState,
      image: image ?? this.image,
      model: model ?? this.model,
      loginError: loginError,
      signupError: signupError,
    );
  }
}
