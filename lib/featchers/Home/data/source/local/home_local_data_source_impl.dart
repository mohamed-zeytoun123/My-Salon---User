import 'package:my_salon/core/service/storage/secure_storage_service.dart';
import 'package:my_salon/core/service/storage/shared_preferences_service.dart';
import 'package:my_salon/featchers/Home/data/source/local/home_local_data_source.dart';

class HomeLocalDataSourceImpl implements HomeLocalDataSource {
  final SecureStorageService secureStorage;
  final SharedPreferencesService preferencesStorage;
  //* Hivi
  HomeLocalDataSourceImpl({
    required this.secureStorage,
    required this.preferencesStorage,
  });
  //?-------------------------------------------------------------
}
