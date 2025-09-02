import 'package:my_salon/core/style/app_text_styles.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PriceDetailsWidget extends StatelessWidget {
  final double priceItem;
  final double priceFees;
  final double priceTotal;
  const PriceDetailsWidget({
    super.key,
    required this.priceItem,
    required this.priceFees,
    required this.priceTotal,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 10.h,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Items".tr(),
              style: AppTextStyles.white16w600HeadingRegular
                  .copyWith(color: Color(0xff1E1918)),
            ),
            Text(
              "\$$priceItem".tr(),
              style: AppTextStyles.whit16w700.copyWith(
                color: Color(0xff1E1918),
                fontStyle: FontStyle.italic,
              ),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Fees".tr(),
              style: AppTextStyles.white16w600HeadingRegular
                  .copyWith(color: Color(0xff1E1918)),
            ),
            Text(
              "\$$priceFees".tr(),
              style: AppTextStyles.whit16w700.copyWith(
                color: Color(0xff1E1918),
                fontStyle: FontStyle.italic,
              ),
            ),
          ],
        ),
        Divider(color: Color.fromARGB(44, 102, 102, 102)),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Total".tr(),
              style: AppTextStyles.white16w800HeadingRegular.copyWith(
                color: Color(0xff1E1918),
                fontStyle: FontStyle.italic,
              ),
            ),
            Text(
              "\$$priceTotal".tr(),
              style:
                  AppTextStyles.whit16w700.copyWith(color: Color(0xff1E1918)),
            ),
          ],
        )
      ],
    );
  }
}
