import 'package:my_salon/featchers/Home/data/model/category_model.dart';
import 'package:my_salon/featchers/auth/data/model/user_data_model.dart';

class ProviderModel {
  final int id;
  final int showInHome;
  final int type;
  final DateTime createdAt;
  final dynamic subscriptionId;
  final int order;
  final dynamic currencyPerPoint;
  final dynamic pointValue;
  final String name;
  final String bio;
  final dynamic address;
  final List<CategoryModel> categories;
  final int supportLoyaltyPoints;
  final UserDataModel user;

  ProviderModel({
    required this.id,
    required this.showInHome,
    required this.type,
    required this.createdAt,
    required this.subscriptionId,
    required this.order,
    required this.currencyPerPoint,
    required this.pointValue,
    required this.name,
    required this.bio,
    required this.address,
    required this.categories,
    required this.supportLoyaltyPoints,
    required this.user,
  });
  factory ProviderModel.fromMap(Map<String, dynamic> map) {
    return ProviderModel(
      id: map['id'] ?? 0,
      showInHome: map['show_in_home'] ?? 0,
      type: map['type'] ?? 0,
      createdAt: DateTime.tryParse(map['created_at'] ?? '') ?? DateTime.now(),
      subscriptionId: map['subscription_id'],
      order: map['order'] ?? 0,
      currencyPerPoint: map['currency_per_point'],
      pointValue: map['point_value'],
      name: map['name'] ?? '',
      bio: map['bio'] ?? '',
      address: map['address'],
      categories: (map['categories'] as List<dynamic>? ?? [])
          .map((e) => CategoryModel.fromMap(e))
          .toList(),
      supportLoyaltyPoints: map['support_loyalty_points'] ?? 0,
      user: UserDataModel.fromMap(map['user'] ?? {}),
    );
  }
}

enum ProviderType {
  salon,
  servicesProvider,
}

extension ProviderTypeExtension on int {
  String get providerTypeText {
    switch (this) {
      case 2:
        return 'Salon';
      case 1:
        return 'Services Provider';
      default:
        return 'Unknown';
    }
  }
}
