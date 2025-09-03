// ignore_for_file: public_member_api_docs, sort_constructors_first
// ignore_for_file: use_build_context_synchronously
import 'package:my_salon/core/Widgets/map/local/map_local_data_source.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:geolocator/geolocator.dart';
import 'package:latlong2/latlong.dart';
import 'package:my_salon/core/Widgets/base/flushbar_helper.dart';
import 'package:my_salon/core/network/app_init_dependencies.dart';
import 'package:my_salon/core/service/network/network_info_service.dart';
import 'package:my_salon/core/service/location/location_service.dart';
import 'map_state.dart';

class MapCubit extends Cubit<MapState> {
  MapCubit({required this.local}) : super(const MapState());
  final MapLocalDataSource local;
  //?-------------------------------------------------------
  changeCurrLocation(LatLng myLocation) {
    local.changeCurrLocatioApp(myLocation);
    emit(state.copyWith(currentLocation: myLocation));
  }

  getListFreelancer(int numberFreelancer) async {
    final newList = await local.getListFreelancerApp(numberFreelancer);
    emit(state.copyWith(nearbyPoints: newList));
  }

  getMyLocation() async {
    final LatLng? myloc = await local.getMyCurrLocatioApp();
    emit(state.copyWith(currentLocation: myloc));
  }

  //?-------------------------------------------------------

  Future<void> getCurrentLocation(BuildContext context) async {
    final network = appLocator<NetworkInfoService>();
    final locationService = appLocator<LocationService>();
    //* تحقق من الاتصال
    if (!await network.isConnected) {
      _showError(context, "No Connection", Icons.wifi_off);
      emit(state.copyWith(isShowNoConnection: true));
      return;
    }

    //* تحقق من تشغيل الموقع
    bool serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      _showError(
          context, "Location service is not enabled", Icons.location_off);
      emit(state.copyWith(isShowNoConnection: true));
      return;
    }

    //* تحقق من الصلاحيات
    LocationPermission permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        _showError(context, "Access denied", Icons.lock_outline);
        emit(state.copyWith(isShowNoConnection: true));
        return;
      }
    }

    if (permission == LocationPermission.deniedForever) {
      _showError(context, "Location permissions are permanently denied",
          Icons.lock_outline);
      emit(state.copyWith(isShowNoConnection: true));
      return;
    }

    //* الحصول على الموقع
    final LatLng? myLoc = await locationService.getMyLocationService();
    //* توليد نقاط عشوائية قريبة
    final List<LatLng> points =
        await locationService.getListFreelancerService(5);

    emit(state.copyWith(
      currentLocation: myLoc,
      nearbyPoints: points,
      isShowNoConnection: false,
    ));
  }

  void _showError(BuildContext context, String message, IconData icon) {
    FlushbarHelper.showFlushbar(
      context: context,
      backgroundColor: Colors.red,
      message: message,
      iconData: icon,
      iconColor: Colors.white,
      sizeIcon: 28,
      mainButtonText: "OK",
      mainButtonOnPressed: () {
        Navigator.pop(context);
      },
      duration: const Duration(seconds: 5),
      isShowProgress: true,
      progressColor: Colors.white,
    );
  }
}
