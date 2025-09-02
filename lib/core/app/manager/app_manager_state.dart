import 'dart:ui';
import 'package:my_salon/featchers/auth/data/model/auth_response_model.dart';
import 'package:latlong2/latlong.dart';

class AppManagerState {
  bool isDarkMode = false;
  // final bool isLogOutSuccess;
  final AuthResponseModel? authResponseModel;
  final String? myLoc;
  final LatLng? myLocation;
  final Locale? appLocale;
  AppManagerState({
    this.myLocation,
    this.myLoc,
    this.isDarkMode = false,
    // this.isLogOutSuccess = false,
    this.authResponseModel,
    this.appLocale,
  });

  AppManagerState copyWith({
    // List<LatLng>? listFreelancer,
    LatLng? muLocation,
    bool? isDarkMode,
    // bool? isLogOutSuccess,
    AuthResponseModel? authResponseModel,
    String? myLocation,
    Locale? appLocale,
  }) {
    return AppManagerState(
      myLocation: muLocation ?? this.myLocation,
      myLoc: myLocation ?? this.myLoc,
      isDarkMode: isDarkMode ?? this.isDarkMode,
      // isLogOutSuccess: isLogOutSuccess ?? this.isLogOutSuccess,
      authResponseModel: authResponseModel ?? this.authResponseModel,
      appLocale: appLocale ?? this.appLocale,
    );
  }
}
