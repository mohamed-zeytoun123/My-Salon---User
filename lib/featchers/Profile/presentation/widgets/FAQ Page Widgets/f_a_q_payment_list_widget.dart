import 'package:my_salon/core/style/app_text_styles.dart';
import 'package:my_salon/featchers/Profile/presentation/widgets/FAQ%20Page%20Widgets/expandable_text_tile_widget.dart';
import 'package:easy_localization/easy_localization.dart';

import 'package:flutter/material.dart';

class FAQPaymentListWidget extends StatelessWidget {
  const FAQPaymentListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Payment".tr(),
          style: AppTextStyles.whit24w400.copyWith(color: Color(0xff383838)),
        ),
        ExpandableTextTile(
          title: "How are research study participants protected?",
          content: "How are research study participants protected?",
        ),
        ExpandableTextTile(
          title: "What are the risks and benefits of joining?",
          content: "What are the risks and benefits of joining?",
        ),
      ],
    );
  }
}
