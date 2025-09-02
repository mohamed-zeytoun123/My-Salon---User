class CityModel {
  final int id;
  final DateTime createdAt;
  final String name;

  CityModel({
    required this.id,
    required this.createdAt,
    required this.name,
  });
  factory CityModel.fromMap(Map<String, dynamic> map) {
    return CityModel(
      id: map['id'] ?? 0,
      createdAt: DateTime.parse(map['created_at']),
      name: map['name'] ?? '',
    );
  }
  factory CityModel.empty() {
    return CityModel(
      id: 0,
      createdAt: DateTime.now(),
      name: '',
    );
  }
}
