// ignore_for_file: deprecated_member_use

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:my_salon/core/style/app_text_styles.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CardMethodPaymentWidget extends StatelessWidget {
  final String image;
  final String title;
  final String subtitle;
  final VoidCallback onTap;
  final bool isSelected;

  const CardMethodPaymentWidget({
    super.key,
    required this.image,
    required this.title,
    required this.subtitle,
    required this.onTap,
    this.isSelected = false,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        GestureDetector(
          onTap: onTap,
          child: Container(
            height: 56.h,
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.r),
              color: isSelected ? Colors.grey.withOpacity(0.2) : Colors.white,
              border: Border.all(
                color: isSelected ? Color(0xFFA64D79) : Color(0xFFE3E3E3),
                width: 1.w,
              ),
            ),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.w),
              child: Row(
                children: [
                  Image.asset(image, height: 40.h, width: 40.w),
                  SizedBox(width: 10.w),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(title,
                          style: AppTextStyles.whit16w700
                              .copyWith(color: Colors.black)),
                      Text(subtitle,
                          style: AppTextStyles.white13w400
                              .copyWith(color: Colors.grey)),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
        Positioned(
          right: 10.w,
          top: 20.h,
          child: Material(
            color: Colors.transparent,
            child: InkWell(
              borderRadius: BorderRadius.circular(10.r),
              splashColor: Colors.black.withOpacity(0.2),
              highlightColor: Colors.black.withOpacity(0.1),
              onTap: onTap,
              child: Ink(
                padding: EdgeInsets.symmetric(horizontal: 10.w),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25.r),
                ),
                child: Row(
                  spacing: 5.w,
                  children: [
                    Icon(
                      Icons.edit_square,
                      color: Color.fromARGB(197, 67, 21, 42),
                      size: 17.sp,
                    ),
                    Text(
                      "Edit".tr(),
                      style: AppTextStyles.white14w500.copyWith(
                        color: Color.fromARGB(197, 67, 21, 42),
                        decoration: TextDecoration.underline,
                        decorationStyle: TextDecorationStyle.solid,
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
