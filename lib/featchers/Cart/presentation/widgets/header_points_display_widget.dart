import 'package:my_salon/core/assets/app_icon.dart';
import 'package:my_salon/core/colors/app_colors.dart';
import 'package:my_salon/core/style/app_text_styles.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HeaderPointsDisplayWidget extends StatelessWidget {
  const HeaderPointsDisplayWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 77.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16.r),
        gradient: LinearGradient(
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
          colors: [
            Color(0xff3E0C0C),
            Color(0xff3E0C0C),
            Color.fromARGB(255, 107, 38, 38),
          ],
          stops: [0.4, 0.5, .8],
        ),
      ),
      padding: EdgeInsets.symmetric(horizontal: 10.w),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            width: 31.w,
            height: 33.h,
            child: Image.asset(
              AppIcon.point,
              color: AppColors.colorThird,
              fit: BoxFit.cover,
            ),
          ),
          Text(
            "You have 10 points worth".tr(),
            style:
                AppTextStyles.whid18w500.copyWith(color: AppColors.colorThird),
          ),
          Text('\$70'.tr(),
              style: AppTextStyles.white26ww700.copyWith(
                color: AppColors.colorThird,
                fontSize: 32.sp,
              )),
        ],
      ),
    );
  }
}
