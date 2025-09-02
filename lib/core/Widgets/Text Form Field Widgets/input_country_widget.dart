import 'package:my_salon/core/style/app_text_styles.dart';
import 'package:my_salon/core/style/text_form_field_style.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class InputCountryWidget extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;
  final double? width;
  const InputCountryWidget({
    super.key,
    required this.controller,
    required this.hintText,
    this.width = double.infinity,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width == double.infinity ? double.infinity : 375.w,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 65.h,
            child: TextFormField(
              textInputAction: TextInputAction.next,
              onFieldSubmitted: (_) {
                FocusScope.of(context).requestFocus();
              },
              controller: controller,
              decoration: TextFormFieldStyle.baseForm(
                      hintText,
                      AppTextStyles.white14w400
                          .copyWith(color: Color(0XFF50555C)))
                  .copyWith(),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter the country name.'.tr();
                } else if (value.length < 3) {
                  return 'The country name must be at least 3 characters long.'
                      .tr();
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
