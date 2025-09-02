import 'package:my_salon/core/style/app_text_styles.dart';
import 'package:my_salon/core/style/text_form_field_style.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class InputEmailWidget extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;
  final IconData? icon;
  final double? width;

  const InputEmailWidget({
    super.key,
    required this.controller,
    required this.hintText,
    this.width,
    this.icon,
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
              textInputAction: TextInputAction.next,
              onFieldSubmitted: (_) {
                FocusScope.of(context).requestFocus();
              },
              controller: controller,
              decoration: TextFormFieldStyle.baseForm(hintText,
                      AppTextStyles.white14w400.copyWith(color: Color(0XFF50555C)))
                  .copyWith(
                prefixIcon: icon != null ? Icon(icon) : null,
              ),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Email cannot be empty!'.tr();
                } else if (!RegExp(
                        r"^[a-zA-Z0-9.a-zA-Z0-9!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$")
                    .hasMatch(value)) {
                  return 'Please enter a valid email address!'.tr();
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
