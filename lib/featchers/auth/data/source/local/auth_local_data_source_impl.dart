import 'package:my_salon/core/service/storage/secure_storage_service.dart';
import 'package:my_salon/core/service/storage/shared_preferences_service.dart';
import 'package:my_salon/featchers/auth/data/source/local/auth_local_data_source.dart';

class AuthLocalDataSourceImpl implements AuthLocalDataSource {
  final SecureStorageService secureStorage;
  final SharedPreferencesService preferencesStorage;
  //* Hivi
  AuthLocalDataSourceImpl({
    required this.secureStorage,
    required this.preferencesStorage,
  });
  //? ----------------- User  Data -------------------------
  // @override
  // Future<void> cachedUserData(AuthResponseModel model) async {
  //   await secureStorage.saveDataUserInCache(model);
  // }

  // @override
  // Future<AuthResponseModel?> getCachedUserData() async {
  //   return secureStorage.getUserFromCache();
  // }
  //?------------------------------------------------------
}
