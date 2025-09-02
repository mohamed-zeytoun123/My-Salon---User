import 'dart:io';
import 'package:my_salon/core/constant/cache_keys.dart';
import 'package:my_salon/core/service/image/image_services.dart';
import 'package:my_salon/core/service/storage/shared_preferences_service.dart';
import 'package:path_provider/path_provider.dart';

class ImageServicesImpl implements ImageServices {
  final SharedPreferencesService storagePreferences;

  ImageServicesImpl({required this.storagePreferences});
  //?-------------------------------------------------------------

  //* Save
  @override
  Future<void> saveProfileImageService(File image) async {
    final appDir = await getApplicationDocumentsDirectory();
    final fileName = image.path.split('/').last;
    final savedImage = await image.copy('${appDir.path}/$fileName');
    await storagePreferences.saveProfileImageInCach(
        CacheKeys.imageProfile, savedImage.path);
  }
  //?-------------------------------------------------------------

  //* get
  @override
  Future<File?> getProfileImageService() async {
    return storagePreferences.getProfileImageInCach();
  }

  //?-------------------------------------------------------------

  //* remove
  @override
  Future<void> removeProfileImageService() async {
    await storagePreferences.removeProfileImageInCach();
  }
  //?-------------------------------------------------------------
}
