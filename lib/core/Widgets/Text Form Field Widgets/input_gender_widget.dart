import 'package:my_salon/core/style/app_text_styles.dart';
import 'package:my_salon/core/style/text_form_field_style.dart';
import 'package:my_salon/featchers/auth/data/model/gender_enum.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class InputGenderWidget extends StatefulWidget {
  final GenderEnum? initialGender;
  final Function(GenderEnum?) onChanged;
  final double? width;

  const InputGenderWidget({
    super.key,
    this.initialGender,
    required this.onChanged,
    this.width,
  });

  @override
  State<InputGenderWidget> createState() => _InputGenderWidgetState();
}

class _InputGenderWidgetState extends State<InputGenderWidget> {
  GenderEnum? _selectedGender;

  @override
  void initState() {
    super.initState();
    _selectedGender = widget.initialGender ?? GenderEnum.unknown;
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: (widget.width ?? 375).w,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 65.h,
            child: DropdownButtonFormField<GenderEnum>(
              value: _selectedGender,
              decoration: TextFormFieldStyle.baseForm(
                "Select Gender",
                AppTextStyles.white14w400.copyWith(
                  color: const Color(0XFF50555C),
                ),
              ).copyWith(),
              validator: (value) {
                if (value == null) {
                  return "Please select gender!".tr();
                }
                return null;
              },
              onChanged: (newValue) {
                setState(() {
                  _selectedGender = newValue;
                });
                widget.onChanged(newValue);
              },
              items: [
                DropdownMenuItem<GenderEnum>(
                  value: GenderEnum.male,
                  child: Text('Male'.tr()),
                ),
                DropdownMenuItem<GenderEnum>(
                  value: GenderEnum.female,
                  child: Text('Female'.tr()),
                ),
                DropdownMenuItem<GenderEnum>(
                  value: GenderEnum.unknown,
                  child: Text('Unknown'.tr()),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
