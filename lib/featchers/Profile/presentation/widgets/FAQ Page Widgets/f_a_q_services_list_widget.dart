import 'package:my_salon/core/style/app_text_styles.dart';
import 'package:my_salon/featchers/Profile/presentation/widgets/FAQ%20Page%20Widgets/expandable_text_tile_widget.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class FAQServicesListWidget extends StatelessWidget {
  const FAQServicesListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Services".tr(),
          style: AppTextStyles.whit24w400.copyWith(color: Color(0xff383838)),
        ),
        ExpandableTextTile(
          title:
              "How does staff augmentation differ from traditional outsourcing?",
          content:
              "How does staff augmentation differ from traditional outsourcing?",
        ),
        ExpandableTextTile(
          title:
              "What is the cost of staff augmentation services and how is it calculated?",
          content:
              "What is the cost of staff augmentation services and how is it calculated?",
        ),
      ],
    );
  }
}
