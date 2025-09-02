import 'package:my_salon/core/colors/app_colors.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_salon/core/style/app_text_styles.dart';
import 'package:my_salon/core/Widgets/base/logo_widget.dart';

class JoinAsPartnerWidget extends StatelessWidget {
  const JoinAsPartnerWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 13.h,
      children: [
        Padding(
            padding: EdgeInsets.only(top: 80.h, bottom: 20.h),
            child: LogoWidget(width: 100, height: 100)),
        Text("Have A Business Account?".tr(),
            style: AppTextStyles.black32w400Meditative
                .copyWith(color: AppColors.colorThird)),
        SizedBox(
          height: 46.h,
          width: 289.w,
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.r),
              ),
            ),
            onPressed: () {},
            child: Text(
              "Join as a partner".tr(),
              style: AppTextStyles.black16w700,
            ),
          ),
        )
      ],
    );
  }
}
