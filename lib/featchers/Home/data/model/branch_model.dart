import 'package:my_salon/featchers/Home/data/model/address_model.dart';
import 'package:my_salon/featchers/Home/data/model/provider_model.dart';

class BranchModel {
  final int id;
  final int providerId;
  final DateTime createdAt;
  final String managerName;
  final int isOpen;
  final String phone;
  final String name;
  final dynamic distance;
  final int productsCount;
  final String image;
  final String coverImage;
  final List<dynamic> gallery;
  final AddressModel address;
  final ProviderModel provider;

  BranchModel({
    required this.id,
    required this.providerId,
    required this.createdAt,
    required this.managerName,
    required this.isOpen,
    required this.phone,
    required this.name,
    required this.distance,
    required this.productsCount,
    required this.image,
    required this.coverImage,
    required this.gallery,
    required this.address,
    required this.provider,
  });
  factory BranchModel.fromMap(Map<String, dynamic> map) {
    return BranchModel(
      id: map['id'] ?? 0,
      providerId: map['provider_id'] ?? 0,
      createdAt: DateTime.tryParse(map['created_at'] ?? '') ?? DateTime.now(),
      managerName: map['manager_name'] ?? '',
      isOpen: map['is_open'] ?? 0,
      phone: map['phone'] ?? '',
      name: map['name'] ?? '',
      distance: map['distance'],
      productsCount: map['products_count'] ?? 0,
      image: map['image'] ?? '',
      coverImage: map['cover_image'] ?? '',
      gallery: List<dynamic>.from(map['gallery'] ?? []),
      address: AddressModel.fromMap(map['address'] ?? {}),
      provider: ProviderModel.fromMap(map['provider'] ?? {}),
    );
  }
}
