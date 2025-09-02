import 'package:my_salon/core/Widgets/status_badge_widget.dart';
import 'package:my_salon/core/model/Body%20Appointment%20Card%20Model/provider_info_model.dart';
import 'package:my_salon/core/style/app_text_styles.dart';
import 'package:flutter/material.dart';

class ProviderInfoRowWidget extends StatelessWidget {
  final ProviderInfoModel providerInfoModel;

  const ProviderInfoRowWidget({
    super.key,
    required this.providerInfoModel,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          providerInfoModel.providerName,
          style: AppTextStyles.white16w800.copyWith(color: Color(0xff121212)),
        ),
        StatusBadgeWidget(text: providerInfoModel.status),
      ],
    );
  }
}
