import 'package:my_salon/featchers/Home/data/model/region_model.dart';

class AddressModel {
  final int id;
  final dynamic address;
  final dynamic lat;
  final dynamic lng;
  final int regionId;
  final DateTime createdAt;
  final RegionModel region;

  AddressModel({
    required this.id,
    required this.address,
    required this.lat,
    required this.lng,
    required this.regionId,
    required this.createdAt,
    required this.region,
  });
  factory AddressModel.fromMap(Map<String, dynamic> map) {
    return AddressModel(
      id: map['id'] ?? 0,
      address: map['address'], 
      lat: map['lat'],
      lng: map['lng'],
      regionId: map['region_id'] ?? 0,
      createdAt: DateTime.tryParse(map['created_at'] ?? '') ?? DateTime.now(),
      region: map['region'] != null
          ? RegionModel.fromMap(map['region'])
          : RegionModel.empty(), 
    );
  }
}
