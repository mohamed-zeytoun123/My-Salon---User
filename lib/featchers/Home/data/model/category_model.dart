class CategoryModel {
  final int id;
  final int status;
  final String type;
  final DateTime createdAt;
  final String name;
  final String image;

  CategoryModel({
    required this.id,
    required this.status,
    required this.type,
    required this.createdAt,
    required this.name,
    required this.image,
  });
  factory CategoryModel.fromMap(Map<String, dynamic> map) {
    return CategoryModel(
      id: map['id'] ?? 0,
      status: map['status'] ?? 0,
      type: map['type'] ?? '',
      createdAt: DateTime.tryParse(map['created_at'] ?? '') ?? DateTime.now(),
      name: map['name'] ?? '',
      image: map['image'] ?? '',
    );
  }
}
