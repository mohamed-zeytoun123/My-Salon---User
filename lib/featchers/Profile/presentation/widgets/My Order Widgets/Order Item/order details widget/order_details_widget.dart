import 'package:my_salon/core/colors/app_colors.dart';
import 'package:my_salon/core/model/Booking_Date_Model.dart';
import 'package:my_salon/core/style/app_text_styles.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OrderDetailsWidget extends StatelessWidget {
  final int orderId;
  final BookingDate date;
  final double price;

  const OrderDetailsWidget({
    super.key,
    required this.orderId,
    required this.date,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 5.h,
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Order Id #$orderId".tr(),
                  style: AppTextStyles.whit16w700
                      .copyWith(color: Color(0xff000000)),
                ),
                Text(
                  "${date.day} - ${date.month} -${date.year}".tr(),
                  style: AppTextStyles.white13w400
                      .copyWith(color: Color(0xff818181)),
                ),
              ],
            ),
            Text(
              "\$$price".tr(),
              style: AppTextStyles.whit20w200.copyWith(
                  fontStyle: FontStyle.italic, color: AppColors.colorSecondary),
            ),
          ],
        ),
        DottedBorder(
          dashPattern: [5, 3],
          color: const Color.fromARGB(75, 158, 158, 158),
          strokeWidth: 1,
          customPath: (size) => Path()
            ..moveTo(0, 0)
            ..lineTo(size.width, 0),
          child: SizedBox(width: double.infinity, height: 0.h),
        ),
      ],
    );
  }
}
