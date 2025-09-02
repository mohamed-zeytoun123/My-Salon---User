// ignore_for_file: file_names

import 'package:my_salon/core/style/app_text_styles.dart';
import 'package:my_salon/core/style/text_form_field_style.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class InputDayAndMonthWidget extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;
  final double? width;

  const InputDayAndMonthWidget({
    super.key,
    required this.controller,
    required this.hintText,
    this.width,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width?.w ?? 375.w,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 65.h,
            child: TextFormField(
              controller: controller,
              textInputAction: TextInputAction.next,
              decoration: TextFormFieldStyle.baseForm(hintText,
                  AppTextStyles.white14w400.copyWith(color: Color(0XFF50555C))),
              keyboardType: TextInputType.number,
              inputFormatters: [
                FilteringTextInputFormatter.digitsOnly,
                LengthLimitingTextInputFormatter(5),
              ],
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter the month and year (MM/YY)'.tr();
                } else if (!RegExp(r'^\d{2}/\d{2}$').hasMatch(value)) {
                  return 'Invalid format! Please use MM/YY with a slash between numbers'.tr();
                }
                return null;
              },
            ),
          ),
        ],
      ),
    );
  }
}
