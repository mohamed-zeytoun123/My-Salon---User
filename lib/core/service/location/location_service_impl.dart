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

  //* Get Address From LatLng
  @override
  Future<String> getAddressFromLatLngService(LatLng location) async {
    try {
      List<Placemark> placemarks = await placemarkFromCoordinates(
        location.latitude,
        location.longitude,
      );

      if (placemarks.isNotEmpty) {
        final place = placemarks.first;
        final street = place.street ?? '';
        final locality = place.locality ?? '';
        final adminArea = place.administrativeArea ?? '';
        final country = place.country ?? '';
        return "$street, $locality, $adminArea, $country";
      }
    } catch (_) {}
    return "Unknown location";
  }

  //?------------------------------------------------------------

  //* Get List Freelancer Random
  @override
  Future<List<LatLng>> getListFreelancerService(int numberFreelancer) async {
    final myLoc = await storagePreferences.getSavedLocationInCach();
    if (myLoc == null) return [];

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
  Future<LatLng?> getMyLocationService() async {
    try {
      bool serviceEnabled = await Geolocator.isLocationServiceEnabled();
      if (!serviceEnabled) return null;

      LocationPermission permission = await Geolocator.checkPermission();
      if (permission == LocationPermission.denied) {
        permission = await Geolocator.requestPermission();
        if (permission == LocationPermission.denied ||
            permission == LocationPermission.deniedForever) {
          return null;
        }
      }

      Position position = await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.high,
      );
      LatLng myLoc = LatLng(position.latitude, position.longitude);
      await storagePreferences.saveLocationInCach(myLoc);
      return myLoc;
    } catch (e) {
      return null;
    }
  }

  //?------------------------------------------------------------

  @override
  Future<void> removeCurrLocationService() async {
    await storagePreferences.removeCurrLocationInCach();
  }

  //?------------------------------------------------------------

  @override
  Future<void> changeCurrLocationService(LatLng newLocation) async {
    await Future.wait([
      removeCurrLocationService(),
      storagePreferences.saveLocationInCach(newLocation),
    ]);
  }

  //?------------------------------------------------------------
}
