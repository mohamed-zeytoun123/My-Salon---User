import 'package:my_salon/core/style/app_text_styles.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomHeaderWidget extends StatelessWidget {
  final String title;
  final Widget? child;
  final VoidCallback? onTap;
  final TextStyle titleStyle;
  const CustomHeaderWidget({
    super.key,
    required this.title,
    this.child,
    this.onTap,
    required this.titleStyle,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(title.tr(), style: titleStyle),
        if (onTap != null)
          InkWell(
            onTap: onTap,
            child: child ??
                Row(
                  spacing: 10.w,
                  children: [
                    Text("See All".tr(),
                        style: AppTextStyles.white14w500
                            .copyWith(color: Color(0xff515151))),
                    Icon(
                      Icons.arrow_forward_ios_outlined,
                      size: 20.sp,
                      color: Color(0xff000000),
                    ),
                  ],
                ),
          ),
      ],
    );
  }
}
