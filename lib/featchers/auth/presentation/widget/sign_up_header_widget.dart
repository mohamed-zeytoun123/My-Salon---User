import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_salon/core/style/app_text_styles.dart';

class SignUpHeaderWidget extends StatelessWidget {
  const SignUpHeaderWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10.w),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(
            "Create new account.".tr(),
            style: AppTextStyles.black32w400Meditative,
          ),
          Text(
            "Enter the following info to create new account.".tr(),
            style: AppTextStyles.black18w400SFProDisplayHeavy
                .copyWith(fontSize: 12.sp, color: Color(0xff666666)),
          ),
        ],
      ),
    );
  }
}
