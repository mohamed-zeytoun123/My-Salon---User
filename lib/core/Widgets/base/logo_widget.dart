import 'package:my_salon/core/assets/app_icon.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LogoWidget extends StatelessWidget {
  const LogoWidget({super.key, required this.width, required this.height});
  final double width;
  final double height;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(100.r),
      child: Image.asset(
       AppIcon.appLogo,
        width: width.w,
        height: height.h,
        fit: BoxFit.cover,
      ),
    );
  }
}
