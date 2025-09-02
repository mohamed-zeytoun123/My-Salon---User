import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:my_salon/core/constant/cache_keys.dart';
import 'package:my_salon/featchers/auth/data/model/auth_response_model.dart';

class SecureStorageService {
  final FlutterSecureStorage storage;
  SecureStorageService({required this.storage});

  //? ----------------------- User -----------------------------------------------

  //* Save
  saveDataUserInCache(AuthResponseModel user) async {
    final encodedData = user.toJson();
    await storage.write(
      key: CacheKeys.userData,
      value: encodedData,
    );
  }

  //* Remove
  removeDataUserInCache() async {
    await storage.deleteAll();
  }

  //* Get
  Future<AuthResponseModel?> getUserFromInCache() async {
    final jsonString = await storage.read(key: CacheKeys.userData);
    if (jsonString == null) return null;
    return AuthResponseModel.fromJson(jsonString);
  }
  //? -------------------------------------------------------------------------------
}
