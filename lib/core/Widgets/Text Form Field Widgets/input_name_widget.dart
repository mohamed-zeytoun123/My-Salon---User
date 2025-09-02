import 'package:my_salon/core/style/app_text_styles.dart';
import 'package:my_salon/core/style/text_form_field_style.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class InputNameWidget extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;
  final IconData? icon;

  final double? width;

  const InputNameWidget({
    super.key,
    required this.controller,
    required this.hintText,
    this.width,
    this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width:( width ?? 375).w,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 65.h,
            child: TextFormField(
              controller: controller,
              textInputAction: TextInputAction.next,
              onFieldSubmitted: (_) {
                FocusScope.of(context).requestFocus();
              },
              decoration: TextFormFieldStyle.baseForm(hintText,
                      AppTextStyles.white14w400.copyWith(color: Color(0XFF50555C)))
                  .copyWith(
                prefixIcon: icon != null ? Icon(icon) : null,
              ),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Name cannot be empty!'.tr();
                } else if (value.length < 3) {
                  return 'Name must be at least 3 characters!'.tr();
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
