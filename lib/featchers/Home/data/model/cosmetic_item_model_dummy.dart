class CosmeticItemModelDUMMY {
  final String appImage;
  final String profileAppImage;
  final String title;
  final String location;
  final ServiceType serviceType;
  final int distance;
  final double rating;
  final int reviewsCount;

  CosmeticItemModelDUMMY({
    required this.appImage,
    required this.profileAppImage,
    required this.title,
    required this.location,
    required this.serviceType,
    required this.distance,
    required this.rating,
    required this.reviewsCount,
  });
}

// ignore: constant_identifier_names
enum ServiceType { Salon, Freelance }
