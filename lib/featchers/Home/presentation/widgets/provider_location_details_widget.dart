import 'package:my_salon/core/style/app_text_styles.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class ProviderLocationDetailsWidget extends StatelessWidget {
  const ProviderLocationDetailsWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Expanded(
              child: ListTile(
                title: Text(
                  "Country".tr(),
                  style:
                      AppTextStyles.white16w700.copyWith(color: Color(0xff121212)),
                ),
                subtitle: Text(
                  "Country Name".tr(),
                  style:
                      AppTextStyles.white14w400.copyWith(color: Color(0xff515151)),
                ),
              ),
            ),
            Expanded(
              child: ListTile(
                title: Text(
                  "City".tr(),
                  style:
                      AppTextStyles.white16w700.copyWith(color: Color(0xff121212)),
                ),
                subtitle: Text(
                  "City Name".tr(),
                  style:
                      AppTextStyles.white14w400.copyWith(color: Color(0xff515151)),
                ),
              ),
            ),
          ],
        ),
        ListTile(
          title: Text(
            "Area & Street".tr(),
            style: AppTextStyles.white16w700.copyWith(color: Color(0xff121212)),
          ),
          subtitle: Text(
            "Area & Street Name - 23 Location".tr(),
            style: AppTextStyles.white14w400.copyWith(color: Color(0xff515151)),
          ),
        ),
      ],
    );
  }
}
