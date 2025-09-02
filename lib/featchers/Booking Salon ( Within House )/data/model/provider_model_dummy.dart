// ignore_for_file: file_names

class ProviderModelDUMMY {
  final String name;
  final String image;
  final String description;
  final bool isUnavailable;

  ProviderModelDUMMY({
    required this.name,
    required this.image,
    required this.description,
    this.isUnavailable = false,
  });
  factory ProviderModelDUMMY.fromMap(Map<String, dynamic> map) {
  return ProviderModelDUMMY(
    name: map['name'] ?? '',
    image: map['image'] ?? '',
    description: map['description'] ?? '',
    isUnavailable: map['is_unavailable'] ?? false,
  );
}

}
