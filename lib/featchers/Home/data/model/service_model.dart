import 'package:my_salon/featchers/Home/data/model/branch_model.dart';
import 'package:my_salon/featchers/Home/data/model/category_model.dart';

class ServiceModel {
  final int id;
  final bool isFavourite;
  final int price;
  final int duration;
  final int categoryId;
  final int type;
  final DateTime createdAt;
  final dynamic deliveryFee;
  final int homeServiceFee;
  final int newPrice;
  final String name;
  final String image;
  final String description;
  final BranchModel branch;
  final CategoryModel category;

  ServiceModel({
    required this.id,
    required this.isFavourite,
    required this.price,
    required this.duration,
    required this.categoryId,
    required this.type,
    required this.createdAt,
    required this.deliveryFee,
    required this.homeServiceFee,
    required this.newPrice,
    required this.name,
    required this.image,
    required this.description,
    required this.branch,
    required this.category,
  });
  factory ServiceModel.fromMap(Map<String, dynamic> map) {
    return ServiceModel(
      id: map['id'] ?? 0,
      isFavourite: map['is_favourite'] ?? false,
      price: map['price'] ?? 0,
      duration: map['duration'] ?? 0,
      categoryId: map['category_id'] ?? 0,
      type: map['type'] ?? 0,
      createdAt: DateTime.tryParse(map['created_at'] ?? '') ?? DateTime.now(),
      deliveryFee: map['delivery_fee'],
      homeServiceFee: map['home_service_fee'] ?? 0,
      newPrice: int.tryParse(map['new_price']?.toString() ?? '') ?? 0,
      name: map['name'] ?? '',
      image: map['image'] ?? '',
      description: map['description'] ?? '',
      branch: BranchModel.fromMap(map['branch'] ?? {}),
      category: CategoryModel.fromMap(map['category'] ?? {}),
    );
  }
}
