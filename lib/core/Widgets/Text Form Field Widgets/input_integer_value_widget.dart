import 'package:my_salon/core/style/app_text_styles.dart';
import 'package:my_salon/core/style/text_form_field_style.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class InputIntegerValueWidget extends StatelessWidget {
  const InputIntegerValueWidget({super.key, required this.controller});
  final TextEditingController controller;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 375.w,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 55.h,
            child: TextFormField(
              controller: controller,
              keyboardType: TextInputType.number,
              inputFormatters: [FilteringTextInputFormatter.digitsOnly],
              textInputAction: TextInputAction.next,
              decoration: TextFormFieldStyle.baseForm(
                "Enter Value",
                AppTextStyles.white13w400.copyWith(color: const Color(0xffC8C8C8)),
              ).copyWith(
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Color(0xffE3E3E3)),
                      borderRadius: BorderRadius.circular(12.r))),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Value cannot be empty!'.tr();
                }
                final intValue = int.tryParse(value);
                if (intValue == null) {
                  return 'Please enter a valid Value!'.tr();
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
