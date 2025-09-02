import 'package:my_salon/core/assets/app_icon.dart';
import 'package:flutter/material.dart';
import 'package:my_salon/core/style/app_text_styles.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LocationTextWidget extends StatelessWidget {
  final String location;

  const LocationTextWidget({super.key, required this.location});

  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 5.w,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Image.asset(
          AppIcon.location,
          color: const Color(0xff000000),
        ),
        Text(
          overflow: TextOverflow.ellipsis,
          location,
          style: AppTextStyles.whit11w700.copyWith(
            color: const Color(0xff000000),
            decoration: TextDecoration.underline,
            decorationThickness: 1,
            decorationColor: const Color(0xff000000),
            decorationStyle: TextDecorationStyle.solid,
          ),
        ),
      ],
    );
  }
}
