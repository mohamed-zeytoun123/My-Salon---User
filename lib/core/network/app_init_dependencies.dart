import 'package:my_salon/core/Widgets/map/local/map_local_data_source.dart';
import 'package:my_salon/core/Widgets/map/local/map_local_data_source_impl.dart';
import 'package:my_salon/core/app/local/app_local_data_source.dart';
import 'package:my_salon/core/app/local/app_local_data_source_impl.dart';
import 'package:my_salon/core/service/image/image_services.dart';
import 'package:my_salon/core/service/image/image_services_impl.dart';
import 'package:my_salon/core/service/location/location_service.dart';
import 'package:my_salon/core/service/location/location_service_impl.dart';
import 'package:my_salon/core/service/translation/translation_service.dart';
import 'package:my_salon/core/service/translation/translation_service_impl.dart';
import 'package:my_salon/featchers/Home/data/source/local/home_local_data_source.dart';
import 'package:my_salon/featchers/Home/data/source/local/home_local_data_source_impl.dart';
import 'package:my_salon/featchers/Home/data/source/remote/home_remot_data_source.dart';
import 'package:my_salon/featchers/Home/data/source/remote/home_remot_data_source_impl.dart';
import 'package:my_salon/featchers/Home/data/source/repo/home_repostory.dart';
import 'package:my_salon/featchers/Home/data/source/repo/home_repostory_impl.dart';
import 'package:my_salon/featchers/auth/data/source/repo/auth_repostory_impl.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:get_it/get_it.dart';
import 'package:my_salon/core/network/api_general.dart';
import 'package:my_salon/core/network/app_dio.dart';
import 'package:my_salon/core/service/network/network_info_service.dart';
import 'package:my_salon/core/service/network/network_info_service_impl.dart';
import 'package:my_salon/core/service/storage/secure_storage_service.dart';
import 'package:my_salon/core/service/storage/shared_preferences_service.dart';
import 'package:my_salon/featchers/auth/data/source/local/auth_local_data_source.dart';
import 'package:my_salon/featchers/auth/data/source/local/auth_local_data_source_impl.dart';
import 'package:my_salon/featchers/auth/data/source/remote/auth_remote_data_source.dart';
import 'package:my_salon/featchers/auth/data/source/remote/auth_remote_data_source_impl.dart';
import 'package:my_salon/featchers/auth/data/source/repo/auth_repostory.dart' ;
import 'package:shared_preferences/shared_preferences.dart';

final appLocator = GetIt.instance;

Future<void> appInitDependencies() async {
  //? ----------- Network ------------------------------------------

  //! App Dio
  appLocator.registerLazySingleton<AppDio>(() => AppDio());

  //! Api
  appLocator
      .registerLazySingleton<API>(() => API(dio: appLocator<AppDio>().dio));

  //! Network Info
  appLocator.registerLazySingleton<NetworkInfoService>(
      () => NetworkInfoServiceImpl(Connectivity()));

  //? ----------- translation ------------------------------------------------------
  appLocator.registerLazySingleton<TranslationService>(
    () => TranslationServiceImpl(
        storagePreferanceService: appLocator<SharedPreferencesService>()),
  );

  //? ----------- Location ---------------------------------------------------------
  appLocator.registerLazySingleton<LocationService>(
    () => LocationServiceImpl(
        storagePreferences: appLocator<SharedPreferencesService>()),
  );

  //? ----------- Image -------------------------------------------------------------
  appLocator.registerLazySingleton<ImageServices>(
    () => ImageServicesImpl(
        storagePreferences: appLocator<SharedPreferencesService>()),
  );

  //? ----------- Storage -----------------------------------------------------------

  //! Flutter Secure Storage
  appLocator.registerLazySingleton<FlutterSecureStorage>(
    () => const FlutterSecureStorage(),
  );

  //! Secure Storage Service
  appLocator.registerLazySingleton<SecureStorageService>(
    () => SecureStorageService(storage: appLocator<FlutterSecureStorage>()),
  );

  //! Shared Preferences
  final sharedPrefs = await SharedPreferences.getInstance();
  appLocator.registerLazySingleton<SharedPreferences>(() => sharedPrefs);

  //! Shared Preferences Service
  appLocator.registerLazySingleton<SharedPreferencesService>(
    () => SharedPreferencesService(
        storagePreferences: appLocator<SharedPreferences>()),
  );
  //? ----------- Local Data Sources --------------------------------------------------

  //! App Manager local
  appLocator
      .registerLazySingleton<AppLocalDataSource>(() => AppLocalDataSourceImpl(
            secureStorage: appLocator<SecureStorageService>(),
            preferencesStorage: appLocator<SharedPreferencesService>(),
            translationService: appLocator<TranslationService>(),
            locationService: appLocator<LocationService>(),
          ));

  //* Map local
  appLocator.registerLazySingleton<MapLocalDataSource>(() =>
      MapLocalDataSourceImpl(locationService: appLocator<LocationService>()));

  //* Auth local
  appLocator.registerLazySingleton<AuthLocalDataSource>(() =>
      AuthLocalDataSourceImpl(
          secureStorage: appLocator<SecureStorageService>(),
          preferencesStorage: appLocator<SharedPreferencesService>()));

  //* Home local
  appLocator.registerLazySingleton<HomeLocalDataSource>(() =>
      HomeLocalDataSourceImpl(
          secureStorage: appLocator<SecureStorageService>(),
          preferencesStorage: appLocator<SharedPreferencesService>()));

  //? ----------- Remote Data Sources -----------------------------------------------------------

  //* Auth Remote
  appLocator.registerLazySingleton<AuthRemoteDataSource>(
      () => AuthRemoteDataSourceImpl(api: appLocator<API>()));

  //* Home Remote
  appLocator.registerLazySingleton<HomeRemoteDataSource>(
      () => HomeRemoteDataSourceImpl(api: appLocator<API>()));

  //? ----------- Repositories ------------------------------------------------------------------

  //* Auth Repository
  appLocator.registerLazySingleton<AuthRepostory>(() => AuthRepostoryImpl(
      remote: appLocator<AuthRemoteDataSource>(),
      local: appLocator<AuthLocalDataSource>(),
      network: appLocator<NetworkInfoService>()));

  //* Home Repository
  appLocator.registerLazySingleton<HomeRepostory>(() => HomeRepostoryImpl(
      remote: appLocator<HomeRemoteDataSource>(),
      local: appLocator<HomeLocalDataSource>(),
      network: appLocator<NetworkInfoService>()));
  //? --------------------------------------------------------------------------------------------
}
