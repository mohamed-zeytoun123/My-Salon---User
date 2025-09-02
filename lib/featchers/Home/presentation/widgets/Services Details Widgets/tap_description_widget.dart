import 'package:my_salon/core/style/app_text_styles.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TapDescriptionWidget extends StatelessWidget {
  final String description;

  const TapDescriptionWidget({
    super.key,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Padding(
        padding:  EdgeInsets.symmetric(horizontal: 10.w),
        child: Text(
          description.tr(),
          style: AppTextStyles.whit16w400.copyWith(color: Color(0xff515151)),
        ),
      ),
    );
  }
}
