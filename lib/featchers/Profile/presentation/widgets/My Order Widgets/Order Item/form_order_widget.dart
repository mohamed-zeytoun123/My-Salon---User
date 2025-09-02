import 'package:my_salon/featchers/Profile/presentation/widgets/My%20Order%20Widgets/Order%20Item/Order_Item_Widget.dart';
import 'package:flutter/material.dart';

class FormOrderWidget extends OrderItemWidget {
  const FormOrderWidget({
    super.key,
    super.height = 172,
    required super.orderId,
    required super.date,
    required super.price,
    required super.providerAppImage,
    required super.providerName,
    required super.providerSpecialty,
    required super.additionalWidgets,
    super.isGuest = true,
  });

  @override
  // ignore: unnecessary_overrides
  Widget build(BuildContext context) {
    return super.build(context);
  }
}
