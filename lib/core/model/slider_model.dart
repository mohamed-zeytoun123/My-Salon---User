class SliderModel {
  final int id;
  final String url;
  final String sliderableType;
  final int sliderableId;
  final DateTime createdAt;
  final String image;

  SliderModel({
    required this.id,
    required this.url,
    required this.sliderableType,
    required this.sliderableId,
    required this.createdAt,
    required this.image,
  });
  factory SliderModel.fromJson(Map<String, dynamic> json) {
    return SliderModel(
      id: json['id'] ?? 0,
      url: json['url'] ?? '',
      sliderableType: json['sliderable_type'] ?? '',
      sliderableId: json['sliderable_id'] ?? 0,
      createdAt: DateTime.tryParse(json['created_at'] ?? '') ?? DateTime.now(),
      image: json['image'] ?? '',
    );
  }
}
