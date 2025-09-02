import 'dart:developer';
import 'dart:ui';
import 'package:my_salon/core/app/manager/app_manager_state.dart';
import 'package:my_salon/core/app/local/app_local_data_source.dart';
import 'package:my_salon/featchers/auth/data/model/auth_response_model.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppManagerCubit extends Cubit<AppManagerState> {
  AppManagerCubit({required this.local}) : super(AppManagerState());
  final AppLocalDataSource local;
  //?---------- User Data   -------------------------------------------------------

  saveUserDataInAppState(AuthResponseModel model) {
    local.cachedUserDataApp(model);
    emit(state.copyWith(authResponseModel: model));
  }

  getCachedUserDataAppState() async {
    final userData = await local.getCachedUserDataApp();
    if (userData != null) {
      emit(state.copyWith(authResponseModel: userData));
    }
  }

  //?---------- init App  -------------------------------------------------------

  initApp() async {
    log('init app');

    final langCode = await local.getSavedLocaleAPP();
    final savedLocale = langCode != null ? Locale(langCode) : null;

    final authDataFromCache = await local.getCachedUserDataApp();

    emit(state.copyWith(
      authResponseModel: authDataFromCache,
      appLocale: savedLocale,
    ));

    if (authDataFromCache != null) {
      log('user data found');
    }
  }

  //?----------  Location -------------------------------------------------------

  // updateMyLocation(LatLng myLocation) {
  //   local.changeLocatioApp(myLocation);
  //   emit(state.copyWith(muLocation: myLocation));
  // }

  // getListFreelancer(int numberFreelancer) async {
  //   final newList = await local.getListFreelancerApp(numberFreelancer);
  //   emit(state.copyWith(  listFreelancer: newList));
  // }

  // getMyLocation() async {
  //   final LatLng myloc = await local.getMyLocatioApp();
  //   emit(state.copyWith(muLocation: myloc));
  // }

  // changeLocation(LatLng newLocation) async {
  //   await local.changeLocatioApp(newLocation);
  // }

  //?---------- Language  -------------------------------------------------------

  changeLocale(Locale newLocale) async {
    local.changeLocaleAPP(newLocale);
    emit(state.copyWith(appLocale: newLocale));
  }

  //?---------- logout  -------------------------------------------------------

  logout() async {
    Future.wait([
      local.clearLocaleAPP(),
      local.deleteCachedUserDataApp(),
      local.removeCurrLocationAPP(),
    ]);

    emit(state.copyWith(
      authResponseModel: null,
      appLocale: null,
      myLocation: null,
    ));
    log('User logged out and data cleared');
  }
  //?-----------------------------------------------------------------

  //!______________________________________________________________________________________
}
