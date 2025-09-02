import 'package:my_salon/core/style/app_text_styles.dart';
import 'package:my_salon/core/style/text_form_field_style.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:phone_form_field/phone_form_field.dart';

class InputPhoneNumberWidget extends StatelessWidget {
  final PhoneController controller;

  const InputPhoneNumberWidget({
    super.key,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: PhoneFormField(
        controller: controller,
        decoration: TextFormFieldStyle.baseForm(
          "323 4323 1",
          AppTextStyles.white14w400.copyWith(color: Color(0XFF50555C)),
        ).copyWith(
          prefixIcon: Icon(Icons.call, color: Colors.grey),
        ),
        enabled: true,
        validator: (PhoneNumber? value) {
          if (value == null || !value.isValid()) {
            return "Please enter a valid phone number !".tr();
          }
          return null;
        },
      ),
    );
  }
}
