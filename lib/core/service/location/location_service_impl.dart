import 'dart:math';
import 'package:my_salon/core/service/location/location_service.dart';
import 'package:my_salon/core/service/storage/shared_preferences_service.dart';
import 'package:geocoding/geocoding.dart';
import 'package:geolocator/geolocator.dart';
import 'package:latlong2/latlong.dart';

class LocationServiceImpl implements LocationService {
  final SharedPreferencesService storagePreferences;

  LocationServiceImpl({required this.storagePreferences});

  //? --------------------------------------------------------------------

  //* get Address From LatLng
  @override
  Future<String> getAddressFromLatLngService(LatLng location) async {
    try {
      List<Placemark> placemarks = await placemarkFromCoordinates(
        location.latitude,
        location.longitude,
      );

      if (placemarks.isNotEmpty) {
        final place = placemarks.first;
        return "${place.street}, ${place.locality}, ${place.administrativeArea}, ${place.country}";
      }
    } catch (e) {
      return "";
    }
    return "Unknown location";
  }
  //?------------------------------------------------------------

  //* Get List Freelancer Random
  @override
  Future<List<LatLng>> getListFreelancerService(int numberFreelancer) async {
    final myLoc = await storagePreferences.getSavedLocationInCach();
    final random = Random();
    final points = List.generate(numberFreelancer, (i) {
      double latOffset = (random.nextDouble() * 0.072) - 0.036;
      double lngOffset = (random.nextDouble() * 0.072) - 0.036;
      return LatLng(myLoc.latitude + latOffset, myLoc.longitude + lngOffset);
    });
    return points;
  }

  //?------------------------------------------------------------
  @override
  Future<LatLng> getMyLocationService() async {
    Position position = await Geolocator.getCurrentPosition(
      desiredAccuracy: LocationAccuracy.high,
    );
    LatLng myLoc = LatLng(position.latitude, position.longitude);
    storagePreferences.saveLocationInCach(myLoc);
    return myLoc;
  }

  //?------------------------------------------------------------

  @override
  Future<void> removeCurrLocationService() async {
    await storagePreferences.removeCurrLocationInCach();
  }
  //?------------------------------------------------------------

  @override
  Future<void> changeCurrLocationService(LatLng newLocation) async {
    Future.wait([
      removeCurrLocationService(),
      storagePreferences.saveLocationInCach(newLocation),
    ]);
  }

  //?------------------------------------------------------------
}
