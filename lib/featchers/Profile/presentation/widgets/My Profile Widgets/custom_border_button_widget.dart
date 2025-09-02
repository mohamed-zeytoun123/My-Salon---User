import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomBorderButtonWidget extends StatelessWidget {
  final String text;
  final VoidCallback onTap;
  final bool showIcon;
  final Color colorBorder;
  final Color colorText;

  const CustomBorderButtonWidget({
    super.key,
    required this.text,
    required this.onTap,
    this.showIcon = true,
    this.colorBorder = const Color(0xffE3E3E3),
    this.colorText = const Color(0xff000000),
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      borderRadius: BorderRadius.circular(15.r),
      clipBehavior: Clip.hardEdge,
      child: InkWell(
        onTap: onTap,
        child: Container(
          height: 55.h,
          width: double.infinity,
          decoration: BoxDecoration(
            border: Border.all(
              color: colorBorder,
              width: 2.w,
            ),
            borderRadius: BorderRadius.circular(15.r),
          ),
          padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                text,
                style: TextStyle(
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w700,
                  color: colorText,
                ),
              ),
              if (showIcon)
                Icon(
                  Icons.arrow_forward_ios_outlined,
                  size: 20.sp,
                  color: Color.fromARGB(58, 0, 0, 0),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
