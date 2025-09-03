import 'package:dartz/dartz.dart';
import 'package:my_salon/core/Error/failure.dart';

import 'package:my_salon/featchers/auth/data/model/auth_response_model.dart';
import 'package:my_salon/featchers/auth/data/model/sign_up_params.dart';

abstract class AuthRemoteDataSource {
  Future<Either<Failure, AuthResponseModel>> login(
      String numberPhone, String password);
  Future<Either<Failure, AuthResponseModel>> signUp(SignUpParams params);
}
