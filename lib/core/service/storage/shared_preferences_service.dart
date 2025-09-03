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
    try {
      await storagePreferences.clear();
    } catch (_) {}
  }

  //?----------------  Image ----------------------------------------------

  //* Save
  Future<void> saveProfileImageInCach(String key, String value) async {
    try {
      await storagePreferences.setString(key, value);
    } catch (_) {}
  }

  //* Get
  Future<String?> getProfileImageInCach() async {
    try {
      return storagePreferences.getString(CacheKeys.imageProfile);
    } catch (_) {
      return null;
    }
  }

  //* Remove
  Future<void> removeProfileImageInCach() async {
    try {
      final path = storagePreferences.getString(CacheKeys.imageProfile);
      if (path != null) {
        final file = File(path);
        if (file.existsSync()) {
          await file.delete();
        }
      }
      await storagePreferences.remove(CacheKeys.imageProfile);
    } catch (_) {}
  }

  //?-------------------- Locale  ------------------------------------------

  //* Get
  Future<String?> getSavedLocaleInCach() async {
    try {
      return storagePreferences.getString(CacheKeys.appLanguage);
    } catch (_) {
      return null;
    }
  }

  //* Save
  Future<void> saveLocaleInCach(String langCode) async {
    try {
      await storagePreferences.setString(CacheKeys.appLanguage, langCode);
    } catch (_) {}
  }

  //* Change
  Future<void> changeLocaleInCach(Locale newLocale) async {
    try {
      await storagePreferences.setString(
          CacheKeys.appLanguage, newLocale.languageCode);
    } catch (_) {}
  }

  //* Remove
  Future<void> removeLocaleInCach() async {
    try {
      await storagePreferences.remove(CacheKeys.appLanguage);
    } catch (_) {}
  }

  //?---------------- Location  ---------------------------------------

  //* Save
  Future<void> saveLocationInCach(LatLng newLocation) async {
    try {
      final encoded = jsonEncode({
        'latitude': newLocation.latitude,
        'longitude': newLocation.longitude,
      });
      await storagePreferences.setString(CacheKeys.myLocation, encoded);
    } catch (_) {}
  }

  //* Get
  Future<LatLng> getSavedLocationInCach() async {
    try {
      final mylocaString = storagePreferences.getString(CacheKeys.myLocation);
      if (mylocaString != null) {
        final Map<String, dynamic> decoded = jsonDecode(mylocaString);
        return LatLng(decoded['latitude'], decoded['longitude']);
      }
    } catch (_) {}
    return LatLng(0, 0);
  }

  //* Remove
  Future<void> removeCurrLocationInCach() async {
    try {
      await storagePreferences.remove(CacheKeys.myLocation);
    } catch (_) {}
  }

  //?--------------------------------------------------------------
}
