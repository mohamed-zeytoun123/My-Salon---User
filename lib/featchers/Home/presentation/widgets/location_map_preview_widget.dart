import 'package:my_salon/core/assets/app_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LocationMapPreviewWidget extends StatelessWidget {
  const LocationMapPreviewWidget({
    super.key,
    required this.width,
    required this.hight,
  });
  final double width;
  final double hight;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: width.w,
      height: hight.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.r),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20.r),
        child: Image.asset(
          AppImage.map3,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
