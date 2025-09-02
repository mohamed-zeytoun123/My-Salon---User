import 'dart:developer';
import 'package:my_salon/core/Widgets/Form%20Button%20Widget/Text_button_white_widget.dart';
import 'package:my_salon/core/colors/app_colors.dart';
import 'package:my_salon/core/style/app_text_styles.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FormHeaderOfWalletWidget extends StatelessWidget {
  const FormHeaderOfWalletWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        height: 115.h,
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
            stops: [-0.4, -0.5, .8],
          ),
        ),
        padding: EdgeInsets.only(left: 25.w, right: 25.w, top: 25.h),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              spacing: 10.w,
              children: [
                Icon(
                  Icons.card_travel_rounded,
                  color: AppColors.colorThird,
                  size: 30.sp,
                ),
                Text(
                  "Wallet".tr(),
                  style: AppTextStyles.whit24w400
                      .copyWith(color: AppColors.colorThird),
                ),
              ],
            ),
            Column(
              spacing: 6.h,
              children: [
                Text(
                  "1000 \$".tr(),
                  style: AppTextStyles.whit24w400
                      .copyWith(color: AppColors.colorThird),
                ),
                TextButtonWhiteWidget(
                    borderColor: Color(0xffD9D9D9),
                    buttonColor: Color(0xffD9D9D9),
                    label: "Charge Wallet",
                    width: 131,
                    hight: 35,
                    onPressed: () {
                      log("Charge Wallet");
                    }),
              ],
            )
          ],
        ));
  }
}
