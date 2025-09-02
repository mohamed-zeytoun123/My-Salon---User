import 'package:my_salon/core/colors/app_colors.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomContainerWidget extends StatelessWidget {
  final String imagePath;
  final String title;
  final String subtitle;
  final IconData icon;
  final VoidCallback onTap;

  const CustomContainerWidget({
    super.key,
    required this.imagePath,
    required this.title,
    required this.subtitle,
    required this.icon,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: 157.w,
        height: 66.55.h,
        decoration: BoxDecoration(
          gradient: AppColors.colorMain,
          borderRadius: BorderRadius.circular(15.r),
        ),
        child: Padding(
          padding:  EdgeInsets.all(5.r),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: 43.w,
                height: 49.23.h,
                decoration: BoxDecoration(
                  color: Color(0xffECECEC),
                  borderRadius: BorderRadius.circular(15.r),
                ),
                child: Center(child: Image.asset(imagePath)),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: TextStyle(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ).tr(),
                  Text(
                    subtitle,
                    style: TextStyle(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w400,
                        color: Color(0xffB7B7B7)),
                  ).tr(),
                ],
              ),
              Icon(
                icon,
                size: 15.sp,
                color: Color(0xffFFFFFF),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
