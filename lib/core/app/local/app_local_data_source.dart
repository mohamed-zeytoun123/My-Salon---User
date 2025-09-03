import 'dart:ui';
import 'package:my_salon/featchers/auth/data/model/auth_response_model.dart';
import 'package:latlong2/latlong.dart';

abstract class AppLocalDataSource {
  //?---------- User Data   ----------------------------------
  Future<AuthResponseModel?> getCachedUserDataApp();
  Future<void> cachedUserDataApp(AuthResponseModel model);
  Future<void> clearCachedUserDataApp();

  //?---------- Locale  -------------------------------------------------------
  Future<String?> getSavedLocaleAPP();
  Future<void> saveLocaleAPP(String langCode);
  Future<void> changeLocaleAPP(Locale newLocale);
  Future<void> clearLocaleAPP();

  //?---------- Location   -------------------------------------------------------
  Future<void> removeCurrLocationAPP();
  Future<void> changeCurrLocatioApp(LatLng newLocation);
  Future<LatLng?> getMyCurrLocatioApp();
}
