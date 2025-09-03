import 'dart:developer';
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
    try {
      final appDir = await getApplicationDocumentsDirectory();
      final fileName = image.path.split('/').last;
      final savedImage = await image.copy('${appDir.path}/$fileName');

      await storagePreferences.saveProfileImageInCach(
          CacheKeys.imageProfile, savedImage.path);
    } catch (e) {
      log('Error saving profile image: $e');
    }
  }

  //?-------------------------------------------------------------
  //* Get
  @override
  Future<File?> getProfileImageService() async {
    try {
      final path = await storagePreferences.getProfileImageInCach();
      if (path != null) return File(path);
    } catch (e) {
      log('Error getting profile image: $e');
    }
    return null;
  }

  //?-------------------------------------------------------------
  //* Remove
  @override
  Future<void> removeProfileImageService() async {
    try {
      final path = await storagePreferences.getProfileImageInCach();
      if (path != null) {
        final file = File(path);
        if (await file.exists()) await file.delete();
      }

      await storagePreferences.removeProfileImageInCach();
    } catch (e) {
      log('Error removing profile image: $e');
    }
  }
  //?-------------------------------------------------------------
}
