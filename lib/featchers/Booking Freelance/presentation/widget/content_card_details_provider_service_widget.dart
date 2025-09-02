import 'package:my_salon/core/style/app_text_styles.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ContentCardDetailsProviderServiceWidget extends StatelessWidget {
  const ContentCardDetailsProviderServiceWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 3.h,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Provider Name".tr(),
              style:
                  AppTextStyles.whit16w700.copyWith(color: Color(0xff000000)),
            ),
            Text(
              "Skin Care Specialist".tr(),
              style:
                  AppTextStyles.white13w400.copyWith(color: Color(0xff818181)),
            ),
          ],
        ),
        DottedBorder(
          color: const Color(0xffE3E3E3),
          dashPattern: const [3, 4],
          borderType: BorderType.Rect,
          padding: EdgeInsets.zero,
          child: SizedBox(width: 246.w),
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              spacing: 5.w,
              children: [
                Icon(
                  Icons.circle,
                  size: 5.sp,
                  color: Color(0xff434343),
                ),
                Text(
                  "Bridal Makeup".tr(),
                  style: AppTextStyles.white13w400.copyWith(
                    color: Color(0xff434343),
                  ),
                )
              ],
            ),
            Row(
              spacing: 5.w,
              children: [
                Icon(
                  Icons.circle,
                  size: 5.sp,
                  color: Color(0xff434343),
                ),
                Text(
                  "Hair Cut and Styling".tr(),
                  style: AppTextStyles.white13w400.copyWith(
                    color: Color(0xff434343),
                  ),
                )
              ],
            ),
          ],
        )
      ],
    );
  }
}
