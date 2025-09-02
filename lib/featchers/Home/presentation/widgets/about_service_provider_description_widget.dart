import 'package:my_salon/core/style/app_text_styles.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AboutServiceProviderDescriptionWidget extends StatelessWidget {
  const AboutServiceProviderDescriptionWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 15.w),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "About Service Provider".tr(),
            style: AppTextStyles.white14w700.copyWith(color: Color(0xff000000)),
          ),
          Text(
            "a licensed professional who has received specialized training in the care and treatment of skin. They would be knowledgeable about various skin types, conditions, and concerns, and would be able to recommend and perform treatments such as facials, chemical peels, and microdermabrasion. They would also be able to provide advice on skincare products and routines tailored to an individual's needs.".tr(),
            style: AppTextStyles.whit16w400.copyWith(color: Color(0xff666666)),
          ),
        ],
      ),
    );
  }
}
