import 'package:my_salon/featchers/Home/data/model/city_model.dart';

class RegionModel {
  final int id;
  final int cityId;
  final DateTime createdAt;
  final String name;
  final CityModel city;

  RegionModel({
    required this.id,
    required this.cityId,
    required this.createdAt,
    required this.name,
    required this.city,
  });

  factory RegionModel.fromMap(Map<String, dynamic> map) {
    return RegionModel(
      id: map['id'] ?? 0,
      cityId: map['city_id'] ?? 0,
      createdAt: DateTime.tryParse(map['created_at'] ?? '') ?? DateTime.now(),
      name: map['name'] ?? '',
      city: map['city'] != null
          ? CityModel.fromMap(map['city'])
          : CityModel.empty(),
    );
  }

  factory RegionModel.empty() {
    return RegionModel(
      id: 0,
      cityId: 0,
      createdAt: DateTime.now(),
      name: '',
      city: CityModel.empty(),
    );
  }
}
