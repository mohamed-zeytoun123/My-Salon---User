import 'dart:ui';
import 'package:my_salon/core/service/storage/shared_preferences_service.dart';
import 'package:my_salon/core/service/translation/translation_service.dart';

class TranslationServiceImpl implements TranslationService {
  final SharedPreferencesService storagePreferanceService;

  TranslationServiceImpl({required this.storagePreferanceService});
  //? -------------------------------------------------------------------

  @override
  Future<void> changeLocaleService(Locale newLocale) async {
    final Locale changedLocale;
    if (newLocale == Locale('en')) {
      changedLocale = Locale('ar');
    } else {
      changedLocale = Locale('en');
    }
    storagePreferanceService.changeLocaleInCach(changedLocale);
  }

  @override
  Future<void> saveLocaleService(String langCode) async {
    await storagePreferanceService.saveLocaleInCach(langCode);
  }

  @override
  Future<void> clearLocaleService() async {
    await storagePreferanceService.removeLocaleInCach();
  }

  @override
  Future<String?> getSavedLocaleService() async {
    return await storagePreferanceService.getSavedLocaleInCach();
  }
}
