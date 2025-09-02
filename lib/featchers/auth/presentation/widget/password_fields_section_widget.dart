import 'package:my_salon/core/Widgets/Text%20Form%20Field%20Widgets/input_passowrd_widget.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_salon/core/style/app_text_styles.dart';

class PasswordFieldsSection extends StatefulWidget {
  const PasswordFieldsSection({super.key});

  @override
  State<PasswordFieldsSection> createState() => _PasswordFieldsSectionState();
}

class _PasswordFieldsSectionState extends State<PasswordFieldsSection> {
  @override
  void dispose() {
    passwordController.dispose();
    confirmpasswordController.dispose();
    super.dispose();
  }

  final TextEditingController passwordController = TextEditingController();

  final TextEditingController confirmpasswordController =
      TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 10.h,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "New Password".tr(),
          style: AppTextStyles.white14w700.copyWith(color: Color(0xff000000)),
        ),
        InputPassowrdWidget(
          controller: passwordController,
          hintText: '*****************',
        ),
        Text(
          "Confirm New Password".tr(),
          style: AppTextStyles.white14w700.copyWith(color: Color(0xff000000)),
        ),
        InputPassowrdWidget(
          controller: confirmpasswordController,
          hintText: '*****************',
        ),
      ],
    );
  }
}
