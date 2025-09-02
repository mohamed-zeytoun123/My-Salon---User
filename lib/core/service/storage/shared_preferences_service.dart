import 'dart:convert';
import 'dart:io';
import 'dart:ui';
import 'package:my_salon/core/constant/cache_keys.dart';
import 'package:latlong2/latlong.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedPreferencesService {
  final SharedPreferences storagePreferences;
  SharedPreferencesService({required this.storagePreferences});

  //?---------------- Remove All ------------------------------------------
  //! Log Out
  Future<void> removeAll() async {
    await storagePreferences.clear();
  }

  //?----------------  Image ----------------------------------------------

  //* Save
  Future<void> saveProfileImageInCach(String key, String value) async {
    await storagePreferences.setString(key, value);
  }

  //* Get
  Future<File?> getProfileImageInCach() async {
    final path = storagePreferences.getString(CacheKeys.imageProfile);

    if (path != null && File(path).existsSync()) {
      return File(path);
    }
    return null;
  }

  //* Remove
  Future<void> removeProfileImageInCach() async {
    final path = storagePreferences.getString(CacheKeys.imageProfile);
    if (path != null) {
      final file = File(path);
      if (file.existsSync()) {
        await file.delete();
      }
    }
    await storagePreferences.remove(CacheKeys.imageProfile);
  }

  //?-------------------- Locale  ------------------------------------------

  //* Get
  Future<String?> getSavedLocaleInCach() async {
    return storagePreferences.getString(CacheKeys.appLanguage);
  }

  //* Save
  Future<void> saveLocaleInCach(String langCode) async {
    await storagePreferences.setString(CacheKeys.appLanguage, langCode);
  }

  //* Change
  Future<void> changeLocaleInCach(Locale newLocale) async {
    await storagePreferences.setString(
        CacheKeys.appLanguage, newLocale.languageCode);
  }

  //* Remove
  Future<void> removeLocaleInCach() async {
    final path = storagePreferences.getString(CacheKeys.appLanguage);
    if (path != null) {
      await storagePreferences.remove(CacheKeys.appLanguage);
    }
  }

  //?---------------- Location  ---------------------------------------

  //* Save
  Future<void> saveLocationInCach(LatLng newLocation) async {
    //todo if ( ) {} مالا نل
    final decoded = jsonDecode(newLocation.toString());
    final encoder = jsonEncode(decoded);
    await storagePreferences.setString(CacheKeys.myLocation, encoder);
  }

  //* Get
  //todo راجعووووو
  Future<LatLng> getSavedLocationInCach() async {
    final myloca = storagePreferences.get(CacheKeys.myLocation);
    final LatLng encode = jsonEncode(myloca) as LatLng;
    return encode;
  }

  //* Remove
  Future<void> removeCurrLocationInCach() async {
    final path = storagePreferences.getString(CacheKeys.myLocation);
    if (path != null) {
      await storagePreferences.remove(CacheKeys.myLocation);
    }
  }

  //?--------------------------------------------------------------
}
