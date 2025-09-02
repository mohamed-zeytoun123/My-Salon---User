import 'package:my_salon/core/style/app_text_styles.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DisplayServicesAndPriceNameWidget extends StatelessWidget {
  const DisplayServicesAndPriceNameWidget({
    super.key,
    required this.name,
    required this.price,
  });
  final String name;
  final double price;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          name,
          style: AppTextStyles.whit20ww700.copyWith(color: Color(0xff383838)),
        ),
        Padding(
          padding: EdgeInsets.only(right: 30.w),
          child: Text(
            "$price\$".tr(),
            style: AppTextStyles.whit20w400.copyWith(
                fontWeight: FontWeight.w300,
                color: Color(0xff383838),
                fontStyle: FontStyle.italic),
          ),
        ),
      ],
    );
  }
}
