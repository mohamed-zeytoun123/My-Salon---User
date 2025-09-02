import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TextFormFieldStyle {
  static InputDecoration baseForm(String label, [TextStyle? style]) {
    return InputDecoration(
      hintStyle: style ?? TextStyle(fontSize: 14.sp, color: Colors.grey),
      hintText: label.tr(),
      contentPadding: EdgeInsets.symmetric(vertical: 15.h, horizontal: 10.w),
      errorStyle: TextStyle(fontSize: 12.sp, height: 0.8.h),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12.r),
        borderSide: BorderSide(color: Colors.grey),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12.r),
        borderSide: BorderSide(color: Colors.grey),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12.r),
        borderSide: BorderSide(color: Colors.blue, width: 2.w),
      ),
      focusedErrorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12.r),
        borderSide: BorderSide(color: Colors.red, width: 2.w),
      ),
      errorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12.r),
        borderSide: BorderSide(color: Colors.red, width: 1.w),
      ),
    );
  }
}
