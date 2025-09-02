// ignore_for_file: file_names, deprecated_member_use

import 'package:my_salon/core/colors/app_colors.dart';
import 'package:my_salon/core/style/app_text_styles.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TextButtonColorMainWidget extends StatelessWidget {
  final double width;
  final double hight;
  final double? sizeIcon;
  final String label;
  final VoidCallback onPressed;
  final IconData? iconData;
  final Color? background;
  final Color? colorLabel;

  const TextButtonColorMainWidget({
    super.key,
    required this.width,
    required this.hight,
    required this.label,
    required this.onPressed,
    this.iconData,
    this.sizeIcon,
    this.background,
    this.colorLabel,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        borderRadius: BorderRadius.circular(12.r),
        splashColor: Colors.blue.withOpacity(0.2),
        highlightColor: Colors.blue.withOpacity(0.1),
        onTap: onPressed,
        child: Ink(
          height: hight.h,
          width: width.w,
          decoration: BoxDecoration(
            color: background,
            gradient: background == null ? AppColors.colorMain : null,
            borderRadius: BorderRadius.circular(10.r),
          ),
          child: Center(
            child: Row(
              spacing: 10.w,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  label.tr(),
                  style: AppTextStyles.white16w700.copyWith(color: colorLabel),
                ),
                if (iconData != null)
                  Icon(
                    iconData,
                    color: Color(0xffFFFFFF),
                    size: sizeIcon?.sp,
                  ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  TextButtonColorMainWidget copyWith({
    double? width,
    double? hight,
    String? label,
    VoidCallback? onPressed,
  }) {
    return TextButtonColorMainWidget(
      width: width ?? this.width,
      hight: hight ?? this.hight,
      label: label ?? this.label,
      onPressed: onPressed ?? this.onPressed,
    );
  }
}
