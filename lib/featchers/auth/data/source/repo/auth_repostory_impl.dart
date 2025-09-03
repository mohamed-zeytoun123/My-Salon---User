import 'package:dartz/dartz.dart';
import 'package:my_salon/core/Error/failure.dart';

import 'package:my_salon/core/service/network/network_info_service.dart';
import 'package:my_salon/featchers/auth/data/model/auth_response_model.dart';
import 'package:my_salon/featchers/auth/data/model/sign_up_params.dart';
import 'package:my_salon/featchers/auth/data/source/local/auth_local_data_source.dart';
import 'package:my_salon/featchers/auth/data/source/remote/auth_remote_data_source.dart';
import 'package:my_salon/featchers/auth/data/source/repo/auth_repostory.dart';

class AuthRepostoryImpl implements AuthRepostory {
  final AuthRemoteDataSource remote;
  final AuthLocalDataSource local;
  final NetworkInfoService network;
  AuthRepostoryImpl({
    required this.remote,
    required this.local,
    required this.network,
  });
  //?----------------------- login -----------------------
  @override
  Future<Either<Failure, AuthResponseModel>> login(
      String numberPhone, String password) async {
    if (await network.isConnected) {
      final result = await remote.login(numberPhone, password);
      return result.fold(
        (failure) => Left(failure),
        (userData) async {
          // await local.cachedUserData(userData);
          return Right(userData);
        },
      );
    } else {
      return Left(FailureNoConnection());
    }
  }

  //?----------------  sign Up ------------------------------------------
  @override
  Future<Either<Failure, AuthResponseModel>> signUp(SignUpParams params) async {
    if (await network.isConnected) {
      final result = await remote.signUp(params);
      return result.fold(
        (error) {
          return Left(error);
        },
        (userData) async {
          // await local.cachedUserData(userData);
          return Right(userData);
        },
      );
    } else {
      return Left(FailureNoConnection());
    }
  }

  //?----------------------------------------------------------
}
