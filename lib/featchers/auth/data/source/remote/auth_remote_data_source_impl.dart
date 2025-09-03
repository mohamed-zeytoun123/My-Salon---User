// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:developer';
import 'package:my_salon/core/Error/failure.dart';
import 'package:my_salon/core/network/api_general.dart';
import 'package:my_salon/core/network/api_request.dart';
import 'package:my_salon/core/network/app_url.dart';

import 'package:my_salon/featchers/auth/data/model/auth_response_model.dart';
import 'package:my_salon/featchers/auth/data/model/sign_up_params.dart';
import 'package:my_salon/featchers/auth/data/source/remote/auth_remote_data_source.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';


class AuthRemoteDataSourceImpl implements AuthRemoteDataSource {
  AuthRemoteDataSourceImpl({required this.api});

  final API api;

  //? ----------------------   login      ---------------------------------------

  @override
  Future<Either<Failure, AuthResponseModel>> login(
      String numberPhone, String password) async {
    try {
      final response = await api.post(ApiRequest(
        url: AppUrls.login,
        body: {
          "phone": numberPhone,
          "password": password,
        },
      ));
      if (response.statusCode == 200 && response.body != null) {
        final userData = AuthResponseModel.fromMap(response.body);
        return Right(userData);
      }
      return Left(FailureNoData());
    } catch (e) {
      log("error 🔥🔥🔥🔥🔥 :::$e");
      return Left(Failure.handleError(e as Exception));
    }
  }

  //?---------------------------   sign up  ----------------------------------
  @override
  Future<Either<Failure, AuthResponseModel>> signUp(SignUpParams params) async {
    try {
      final dio = Dio();
      dio.interceptors.add(PrettyDioLogger(
          requestHeader: true,
          requestBody: true,
          responseBody: true,
          responseHeader: false,
          error: true,
          compact: true,
          maxWidth: 90,
          enabled: kDebugMode,
          filter: (options, args) {
            //? don't  requests with uris containing '/posts'
            if (options.path.contains('/posts')) {
              return false;
            }
            //? don't print responses with unit8 list data
            return !args.isResponse || !args.hasUint8ListData;
          }));
      final formData = FormData.fromMap(await params.toMap());

      final response = await dio.post(
        AppUrls.signUp,
        data: formData,
        options: Options(
          headers: {
            "Accept": "application/json",
            "Prefer": "return=representation",
            "apikey": "sb_publishable_f5lbKdodkdNG5sqE1sqkNg_eJESDKa3",
          },
        ),
      );

      if (response.statusCode != null &&
          (response.statusCode == 200 || response.statusCode == 201)) {
        final user = AuthResponseModel.fromMap(response.data);
        return Right(user);
      } else {
        return Left(FailureNoData());
      }
    } catch (e, st) {
      log("SignUp error: $e\n$st");

      return Left(
        Failure.handleError(e is Exception ? e : Exception(e.toString())),
      );
    }
  }
//?-----------------------------------------------------------------------------------

}

