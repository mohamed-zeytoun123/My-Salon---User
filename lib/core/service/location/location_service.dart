import 'package:latlong2/latlong.dart';

abstract class LocationService {
  Future<String> getAddressFromLatLngService(LatLng location);
  Future<List<LatLng>> getListFreelancerService(int numberFreelancer);
  Future<LatLng?> getMyLocationService();
  Future<void> changeCurrLocationService(LatLng newLocation);
  Future<void> removeCurrLocationService();
}
