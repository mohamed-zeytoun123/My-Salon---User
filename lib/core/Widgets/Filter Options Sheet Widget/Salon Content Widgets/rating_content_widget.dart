// ignore_for_file: file_names
import 'dart:developer';
import 'package:my_salon/core/style/app_text_styles.dart';
import 'package:my_salon/featchers/All/presentation/widget/Get_Rating_Stars_Widget.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RatingContentWidget extends StatelessWidget {
  const RatingContentWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 10.h,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Rating".tr(),
          style: AppTextStyles.white14w600NunitoSans
              .copyWith(color: Color(0xff000000)),
        ),
        GetRatingStarsWidget(
          initialRating: 3,
          starSize: 50,
          onRatingSelected: (value) {
            log("rating : $value");
          },
        ),
      ],
    );
  }
}
