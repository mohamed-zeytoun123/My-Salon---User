import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_salon/core/style/app_text_styles.dart';

Widget labelWidget(String text) {
  return Padding(
    padding: EdgeInsets.only(bottom: 5.h),
    child: Text(
      text.tr(),
      style: AppTextStyles.bff16w700SFProDisplayHeavy
          .copyWith(color: Color(0xff000000)),
    ),
  );
}
