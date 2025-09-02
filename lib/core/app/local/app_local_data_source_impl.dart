import 'dart:ui';
import 'package:my_salon/core/app/local/app_local_data_source.dart';
import 'package:my_salon/core/service/location/location_service.dart';
import 'package:my_salon/core/service/storage/secure_storage_service.dart';
import 'package:my_salon/core/service/storage/shared_preferences_service.dart';
import 'package:my_salon/core/service/translation/translation_service.dart';
import 'package:my_salon/featchers/auth/data/model/auth_response_model.dart';
import 'package:latlong2/latlong.dart';

class AppLocalDataSourceImpl implements AppLocalDataSource {
  final SecureStorageService secureStorage;
  final SharedPreferencesService preferencesStorage;
  final TranslationService translationService;
  final LocationService locationService;

  AppLocalDataSourceImpl({
    required this.secureStorage,
    required this.preferencesStorage,
    required this.translationService,
    required this.locationService,
  });

  //?------------------   Auth Model In Cache    -------------------------------------

  @override
  Future<void> cachedUserDataApp(AuthResponseModel model) async {
    await secureStorage.saveDataUserInCache(model);
  }

  @override
  Future<AuthResponseModel?> getCachedUserDataApp() async {
    return secureStorage.getUserFromInCache();
  }

  @override
  Future<AuthResponseModel?> deleteCachedUserDataApp() async {
    return secureStorage.removeDataUserInCache();
  }
  //?------------------ Language   -----------------------------------------------------------------------

  @override
  Future<String?> getSavedLocaleAPP() async {
    return translationService.getSavedLocaleService();
  }

  @override
  Future<void> saveLocaleAPP(String langCode) async {
    await translationService.saveLocaleService(langCode);
  }

  @override
  Future<void> changeLocaleAPP(Locale newLocale) async {
    await translationService.changeLocaleService(newLocale);
  }

  @override
  Future<void> clearLocaleAPP() async {
    await translationService.clearLocaleService();
  }

  //?---------------- Location  -------------------------------------------------------------------------
  @override
  Future<void> removeCurrLocationAPP() async {
    locationService.removeCurrLocationService();
  }

  @override
  Future<void> changeCurrLocatioApp(LatLng newLocation) async {
    await locationService.changeCurrLocationService(newLocation);
  }

  @override
  Future<LatLng> getMyCurrLocatioApp() async {
    return await locationService.getMyLocationService();
  }
  //?----------------------------------------------------------------------------------------------
}
