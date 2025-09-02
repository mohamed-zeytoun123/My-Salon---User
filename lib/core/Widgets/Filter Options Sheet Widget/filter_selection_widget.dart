import 'dart:developer';
import 'package:my_salon/core/Widgets/Filter%20Options%20Sheet%20Widget/service_option_selector_widget.dart';
import 'package:my_salon/core/Widgets/Filter%20Options%20Sheet%20Widget/filter_options_widget.dart';
import 'package:my_salon/core/colors/app_colors.dart';

import 'package:my_salon/core/style/app_text_styles.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FilterSelectionWidget extends StatelessWidget {
  const FilterSelectionWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 730.h,
      width: double.infinity,
      padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 10.h),
      decoration: BoxDecoration(
        color: AppColors.colorThird,
        borderRadius: BorderRadius.circular(36.r),
      ),
      child: SingleChildScrollView(
        child: Column(
          spacing: 10.h,
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Filteration".tr(),
                  style: AppTextStyles.white24w400Meditative
                      .copyWith(color: AppColors.colorSecondary),
                ),
                InkWell(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Icon(
                    Icons.cancel_outlined,
                    color: Color(0xff898A8D),
                  ),
                ),
              ],
            ),
            Text(
              "Gender".tr(),
              style: AppTextStyles.white14w600NunitoSans
                  .copyWith(color: Color(0xff000000)),
            ),
            ServiceOptionSelectorWidget(
              onSelectionChanged: (S) {
                log(S);
              },
            ),
            FilterOptionsWidget()
          ],
        ),
      ),
    );
  }
}
