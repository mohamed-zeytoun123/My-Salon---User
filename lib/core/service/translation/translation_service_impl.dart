import 'dart:ui';
import 'package:my_salon/core/service/storage/shared_preferences_service.dart';
import 'package:my_salon/core/service/translation/translation_service.dart';

class TranslationServiceImpl implements TranslationService {
  final SharedPreferencesService storagePreferanceService;

  TranslationServiceImpl({required this.storagePreferanceService});
  //? -------------------------------------------------------------------

  //* Change
  @override
  Future<void> changeLocaleService(Locale newLocale) async {
    final changedLocale =
        (newLocale.languageCode == 'en') ? Locale('ar') : Locale('en');
    await storagePreferanceService.changeLocaleInCach(changedLocale);
  }

  //* Save
  @override
  Future<void> saveLocaleService(String langCode) async {
    await storagePreferanceService.saveLocaleInCach(langCode);
  }

  //* Clear
  @override
  Future<void> clearLocaleService() async {
    await storagePreferanceService.removeLocaleInCach();
  }

  //* Get
  @override
  Future<String?> getSavedLocaleService() async {
    return await storagePreferanceService.getSavedLocaleInCach();
  }
  //? -------------------------------------------------------------------
}
