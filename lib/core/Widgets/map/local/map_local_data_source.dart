import 'package:latlong2/latlong.dart';

abstract class MapLocalDataSource {
  Future<void> removeCurrLocationAPP();
  Future<void> changeCurrLocatioApp(LatLng newLocation);
  Future<LatLng?> getMyCurrLocatioApp();
  Future<String> getAddressFromLatLngApp(LatLng location);
  Future<List<LatLng>> getListFreelancerApp(int numberFreelancer);
}
