import 'package:my_salon/featchers/Home/data/model/address_model.dart';
import 'package:my_salon/featchers/Home/data/model/provider_model.dart';

class NearestModel {
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

  NearestModel({
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

  factory NearestModel.fromMap(Map<String, dynamic> map) {
    return NearestModel(
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

  NearestModel copyWith({
    int? id,
    int? providerId,
    DateTime? createdAt,
    String? managerName,
    int? isOpen,
    String? phone,
    String? name,
    dynamic distance,
    int? productsCount,
    String? image,
    String? coverImage,
    List<dynamic>? gallery,
    AddressModel? address,
    ProviderModel? provider,
  }) {
    return NearestModel(
      id: id ?? this.id,
      providerId: providerId ?? this.providerId,
      createdAt: createdAt ?? this.createdAt,
      managerName: managerName ?? this.managerName,
      isOpen: isOpen ?? this.isOpen,
      phone: phone ?? this.phone,
      name: name ?? this.name,
      distance: distance ?? this.distance,
      productsCount: productsCount ?? this.productsCount,
      image: image ?? this.image,
      coverImage: coverImage ?? this.coverImage,
      gallery: gallery ?? this.gallery,
      address: address ?? this.address,
      provider: provider ?? this.provider,
    );
  }
}
