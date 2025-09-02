import 'dart:developer';
import 'package:my_salon/core/assets/app_icon.dart';
import 'package:my_salon/core/colors/app_colors.dart';
import 'package:my_salon/core/style/app_text_styles.dart';
import 'package:my_salon/featchers/Cart/presentation/pages/loyalty_points_page.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoyaltyPointsButtonWidget extends StatelessWidget {
  const LoyaltyPointsButtonWidget({
    super.key,
    required this.isFreelance,
  });
  final bool isFreelance;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 27.h,
      width: 138.w,
      decoration: BoxDecoration(
        color: isFreelance
            ? Color.fromARGB(255, 82, 24, 47)
            : AppColors.colorSecondary,
        borderRadius: BorderRadius.circular(15.r),
      ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: () {
            log("loyalty points");
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => LoyaltyPointsPage()));
          },
          borderRadius: BorderRadius.circular(15.r),
          child: Row(
            spacing: 5.w,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image(
                image: AssetImage(AppIcon.iconp),
                fit: BoxFit.cover,
              ),
              Text(
                "loyalty points".tr(),
                style:
                    AppTextStyles.white14w400.copyWith(color: Color(0xffFFFFFF)),
              )
            ],
          ),
        ),
      ),
    );
  }
}
