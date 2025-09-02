import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:my_salon/core/style/app_text_styles.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OrderInfoWidget extends StatelessWidget {
  final int orderId;
  final String date;

  const OrderInfoWidget({super.key, required this.orderId, required this.date});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "Order ID #$orderId".tr(),
          style: AppTextStyles.white28w600.copyWith(
            color: Color(0xff000000),
            height: 1.5.h,
          ),
        ),
        Text(
          date.tr(),
          style: AppTextStyles.white19w800.copyWith(
            color: Color(0xff6C6C6C),
            height: 1.5.h,
            fontStyle: FontStyle.italic,
          ),
        ),
      ],
    );
  }
}
