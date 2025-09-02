import 'package:my_salon/core/style/text_form_field_style.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class CustomDropdownFieldWidget extends StatelessWidget {
  final String hint;
  final String option1;
  final String option2;
  final String valueOption1;
  final String valueOption2;
  final TextEditingController controller;

  const CustomDropdownFieldWidget({
    super.key,
    required this.hint,
    required this.option1,
    required this.option2,
    required this.valueOption1,
    required this.valueOption2,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField<String>(
      value: controller.text.isNotEmpty ? controller.text : null,
      decoration: TextFormFieldStyle.baseForm(hint),
      validator: (value) {
        if (value == null || value.isEmpty) {
          return "Form cannot be empty!".tr();
        }
        return null;
      },
      onChanged: (value) {
        controller.text = value!;
      },
      items: [
        DropdownMenuItem(value: valueOption1, child: Text(option1.tr())),
        DropdownMenuItem(value: valueOption2, child: Text(option2.tr())),
      ],
    );
  }
}
