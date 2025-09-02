// ignore_for_file: file_names

import 'package:my_salon/featchers/Home/data/model/category_model.dart';
import 'package:my_salon/featchers/Home/data/model/provider_model.dart';

class ProductModel {
  final int id;
  final bool isFavourite;
  final int categoryId;
  final int price;
  final int discountPrice;
  final int providerId;
  final DateTime createdAt;
  final int deliveryFee;
  final String name;
  final String description;
  final List<dynamic> branches;
  final String image;
  final CategoryModel category;
  final ProviderModel provider;

  ProductModel({
    required this.id,
    required this.isFavourite,
    required this.categoryId,
    required this.price,
    required this.discountPrice,
    required this.providerId,
    required this.createdAt,
    required this.deliveryFee,
    required this.name,
    required this.description,
    required this.branches,
    required this.image,
    required this.category,
    required this.provider,
  });
  factory ProductModel.fromMap(Map<String, dynamic> json) {
    return ProductModel(
      id: json['id'],
      isFavourite: json['is_favourite'] ?? false,
      categoryId: json['category_id'],
      price: json['price'],
      discountPrice: json['discount_price'] ?? 0,
      providerId: json['provider_id'],
      createdAt: DateTime.parse(json['created_at']),
      deliveryFee: json['delivery_fee'] ?? 0,
      name: json['name'] ?? '',
      description: json['description'] ?? '',
      branches: json['branches'] ?? [],
      image: json['image'] ?? '',
      category: CategoryModel.fromMap(json['category']),
      provider: ProviderModel.fromMap(json['provider']),
    );
  }
}
