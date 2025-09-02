import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:my_salon/core/style/app_text_styles.dart';

class OtpInstructionsWidget extends StatelessWidget {
  const OtpInstructionsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "OTP Number".tr(),
          style: AppTextStyles.w0x45w400Meditative,
        ),
        RichText(
          textAlign: TextAlign.start,
          text: TextSpan(
            children: [
              TextSpan(
                text: "Enter the Code Sent to ".tr(),
                style: AppTextStyles.b0x16w700SFProDisplayHeavy,
              ),
              TextSpan(
                text: "******94".tr(),
                style: AppTextStyles.b0x16w700SFProDisplayHeavy.copyWith(
                  color: Color(0xffA64D79),
                  decoration: TextDecoration.underline,
                  decorationColor: Color(0xffA64D79),
                  decorationThickness: 1,
                ),
              ),
              TextSpan(
                text: " to Continue Log in Registration".tr(),
                style: AppTextStyles.b0x16w700SFProDisplayHeavy,
              ),
            ],
          ),
        ),
      ],
    );
  }
}


