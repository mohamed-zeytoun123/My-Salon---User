import 'package:my_salon/core/colors/app_colors.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:my_salon/core/style/app_text_styles.dart';
import 'package:my_salon/core/Widgets/gradient_text_widget.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class StatusBadgeWidget extends StatelessWidget {
  final String text;
  final double? width;
  final Color? textcolor;
  const StatusBadgeWidget({
    super.key,
    required this.text,
    this.width = 74,
    this.textcolor = AppColors.colorSecondary,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: const Color(0xffD9D9D9),
      elevation: 1,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.r),
      ),
      child: SizedBox(
        height: 27.h,
        width: width?.w,
        child: Center(
          child: Row(
            spacing: 5.w,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.circle,
                size: 5.sp,
                color: textcolor,
              ),
              if (textcolor == AppColors.colorSecondary)
                GradientText(
                  text: text,
                  style: AppTextStyles.white13w700,
                )
              else
                Text(
                  text.tr(),
                  style: AppTextStyles.white13w700.copyWith(color: textcolor),
                )
            ],
          ),
        ),
      ),
    );
  }
}
