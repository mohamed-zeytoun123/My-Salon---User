import 'package:equatable/equatable.dart';
import 'package:latlong2/latlong.dart';

class MapState extends Equatable {
  final LatLng? currentLocation;
  final List<LatLng> listFreelancer;
  final bool isShowNoConnection;

  const MapState({
    this.currentLocation,
    this.listFreelancer = const [],
    this.isShowNoConnection = false,
  });

  MapState copyWith({
    LatLng? currentLocation,
    List<LatLng>? nearbyPoints,
    bool? isShowNoConnection,
  }) {
    return MapState(
      currentLocation: currentLocation ?? this.currentLocation,
      listFreelancer: nearbyPoints ?? this.listFreelancer,
      isShowNoConnection: isShowNoConnection ?? this.isShowNoConnection,
    );
  }

  @override
  List<Object?> get props =>
      [currentLocation, listFreelancer, isShowNoConnection];
}
