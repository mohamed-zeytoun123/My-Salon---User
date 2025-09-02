import 'package:my_salon/core/style/app_text_styles.dart';
import 'package:my_salon/featchers/Profile/presentation/widgets/FAQ%20Page%20Widgets/expandable_text_tile_widget.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class FAQAccountListWidget extends StatelessWidget {
  const FAQAccountListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Account".tr(),
          style: AppTextStyles.white24w400Meditative
              .copyWith(color: const Color(0xff383838)),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ExpandableTextTile(
              title: "How will my personal data be used & protected?",
              content:
                  "I have hypothyroidism too and I've found that certain hormonal birth control methods can affect my thyroid.",
            ),
            ExpandableTextTile(
              title: "What will happen if I join the clinical research study?",
              content:
                  "What will happen if I join the clinical research study?",
            ),
            ExpandableTextTile(
              title: "What is an investigational medication?",
              content: "What is an investigational medication?",
            ),
          ],
        )
      ],
    );
  }
}
