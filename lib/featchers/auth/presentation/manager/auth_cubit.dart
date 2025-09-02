import 'dart:developer';
import 'dart:io';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_salon/core/util/response_status_enum.dart';
import 'package:my_salon/featchers/auth/data/model/gender_enum.dart';
import 'package:my_salon/featchers/auth/data/model/sign_up_params.dart';
import 'package:my_salon/featchers/auth/data/source/repo/auth_repostory.dart';
import 'package:my_salon/featchers/auth/presentation/manager/auth_state.dart';

class AuthCubit extends Cubit<AuthState> {
  final AuthRepostory repository;
  AuthCubit({required this.repository}) : super(AuthState());

  //? ------------------ login -----------------------------------------------------
  login(String numberPhone, String password) async {
    emit(state.copyWith(loginState: ResponseStatusEnum.loading));
    final result = await repository.login(numberPhone, password);
    result.fold((error) {
      emit(state.copyWith(
          loginState: ResponseStatusEnum.failure, loginError: error));
    }, (user) {
      emit(state.copyWith(loginState: ResponseStatusEnum.success, model: user));
    });
  }

  //? ------------------ sign Up -----------------------------------------------------
  signUp(SignUpParams params) async {
    emit(state.copyWith(signupState: ResponseStatusEnum.loading));

    final result = await repository.signUp(params);
    result.fold((error) {
      emit(state.copyWith(
          signupState: ResponseStatusEnum.failure, signupError: error));
    }, (user) {
      log("in cubit ${user.token}");
      emit(state.copyWith(signupState: ResponseStatusEnum.success, model: user));
    });
  }

  //? ------------------ update Image -----------------------------------------------------
  updateImage(File? image) {
    emit(state.copyWith(image: image));
  }
  //? ------------------ update Gender -----------------------------------------------------

  updateGender(GenderEnum? gender) {
    emit(state.copyWith(gender: gender));
  }
}
