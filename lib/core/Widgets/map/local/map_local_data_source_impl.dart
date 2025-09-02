import 'package:my_salon/core/Widgets/map/local/map_local_data_source.dart';
import 'package:my_salon/core/service/location/location_service.dart';
import 'package:latlong2/latlong.dart';

class MapLocalDataSourceImpl implements MapLocalDataSource {
  final LocationService locationService;

  MapLocalDataSourceImpl({required this.locationService});

  //?--------------------------------------------------------
  @override
  Future<void> removeCurrLocationAPP() async {
    locationService.removeCurrLocationService();
  }

  @override
  Future<void> changeCurrLocatioApp(LatLng newLocation) async {
    await locationService.changeCurrLocationService(newLocation);
  }

  @override
  Future<String> getAddressFromLatLngApp(LatLng location) async {
    return await locationService.getAddressFromLatLngService(location);
  }

  @override
  Future<LatLng> getMyCurrLocatioApp() async {
    return await locationService.getMyLocationService();
  }

  @override
  Future<List<LatLng>> getListFreelancerApp(int numberFreelancer) async {
    return await locationService.getListFreelancerService(numberFreelancer);
  }
}
