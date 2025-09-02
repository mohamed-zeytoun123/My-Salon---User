// ignore_for_file: must_be_immutable, file_names

import 'package:my_salon/core/Widgets/Text%20Form%20Field%20Widgets/Custom_Dropdown_Field_State_Widget.dart';
import 'package:my_salon/core/style/app_text_styles.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AreaContentWidget extends StatefulWidget {
  const AreaContentWidget({super.key});

  @override
  State<AreaContentWidget> createState() => _AreaContentWidgetState();
}

class _AreaContentWidgetState extends State<AreaContentWidget> {
  final TextEditingController areaController = TextEditingController();
  @override
  void dispose() {
    areaController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 10.h,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Location ( by Area )".tr(),
          style: AppTextStyles.white14w600NunitoSans
              .copyWith(color: Color(0xff000000)),
        ),
        CustomDropdownFieldWidget(
          hint: "Location by Area",
          option1: 'Area 1',
          option2: "Area 2",
          valueOption1: "Area 1",
          valueOption2: "Area 2",
          controller: areaController,
        ),
      ],
    );
  }
}
