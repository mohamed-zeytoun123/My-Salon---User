import 'package:my_salon/core/style/app_text_styles.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class LabelFormWidget extends StatelessWidget {
  const LabelFormWidget({
    super.key,
    required this.label,
  });
  final String label;
  @override
  Widget build(BuildContext context) {
    return Text(
      label.tr(),
      style: AppTextStyles.white14w700.copyWith(color: Colors.black),
    );
  }
}
