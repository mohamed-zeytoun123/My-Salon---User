import 'package:my_salon/core/style/app_text_styles.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ServiceItemWithPriceTileWidget extends StatelessWidget {
  const ServiceItemWithPriceTileWidget({
    super.key,
    required this.name,
    required this.quantity,
    required this.priceItem,
  });

  final String name;
  final int quantity;
  final double priceItem;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Expanded(
              child: Row(
                children: [
                  Text(
                    name,
                    style: AppTextStyles.white14w600.copyWith(
                      color: const Color(0xff434343),
                    ),
                  ),
                   SizedBox(width: 5.w),
                  Text(
                    "x $quantity".tr(),
                    style: AppTextStyles.white14w600.copyWith(
                      color: const Color(0xff434343),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding:  EdgeInsets.only(right: 80.w),
              child: Text(
                "\$$priceItem".tr(),
                style: AppTextStyles.white14w200.copyWith(
                  color: const Color(0xff434343),
                  fontStyle: FontStyle.italic,
                ),
              ),
            ),
          ],
        ),
        const Divider(color: Color.fromARGB(44, 102, 102, 102)),
      ],
    );
  }
}
