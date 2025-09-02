import 'dart:developer';
import 'package:my_salon/core/assets/app_image.dart';
import 'package:my_salon/core/colors/app_colors.dart';
import 'package:my_salon/core/style/app_text_styles.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SelectLocationWidget extends StatelessWidget {
  const SelectLocationWidget({
    super.key,
    required this.onPressed,
  });
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
            height: double.infinity,
            width: double.infinity,
            child: Image.asset(
              AppImage.map,
              fit: BoxFit.cover,
            )),
        Align(
          alignment: Alignment.center,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Material(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10.r),
                child: InkWell(
                  borderRadius: BorderRadius.circular(10.r),
                  onTap: () {
                    log("Alignment");
                  },
                  child: Container(
                    width: 52.w,
                    height: 52.h,
                    alignment: Alignment.center,
                    child: Icon(
                      Icons.my_location_sharp,
                      color: Colors.black,
                      size: 30.sp,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 10.h),
              Container(
                height: 56.h,
                width: 343.w,
                decoration: BoxDecoration(
                  gradient: AppColors.colorMain,
                  borderRadius: BorderRadius.circular(10.r),
                ),
                child: TextButton(
                    onPressed: onPressed,
                    child: Text(
                      "Confirm Location".tr(),
                      style: AppTextStyles.white16w700,
                    )),
              ),
              SizedBox(height: 60.h)
            ],
          ),
        ),
      ],
    );
  }
}
