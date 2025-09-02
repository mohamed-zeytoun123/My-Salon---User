// ignore_for_file: file_names

import 'package:my_salon/core/model/Booking_Date_Model.dart';

class OrderCanceledModelDUMMY {
  final int orderId;
  final BookingDate date;
  final double price;
  final String providerAppImage;
  final String providerName;
  final String providerSpecialty;
  final bool isGuest;

  OrderCanceledModelDUMMY({
    required this.orderId,
    required this.date,
    required this.price,
    required this.providerAppImage,
    required this.providerName,
    required this.providerSpecialty,
    this.isGuest = false,
  });
}
