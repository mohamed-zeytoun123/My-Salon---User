// ignore_for_file: must_be_immutable, file_names

import 'package:my_salon/core/Widgets/Text%20Form%20Field%20Widgets/Custom_Dropdown_Field_State_Widget.dart';
import 'package:my_salon/core/style/app_text_styles.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CityContentWidget extends StatefulWidget {
  const CityContentWidget({super.key});

  @override
  State<CityContentWidget> createState() => _CityContentWidgetState();
}

class _CityContentWidgetState extends State<CityContentWidget> {
  final TextEditingController cityController = TextEditingController();
  @override
  void dispose() {
    cityController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 10.h,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Location ( by City )".tr(),
          style: AppTextStyles.white14w600NunitoSans
              .copyWith(color: Color(0xff000000)),
        ),
        CustomDropdownFieldWidget(
          hint: "Location by City",
          option1: 'City 1',
          option2: "City 2",
          valueOption1: "City 1",
          valueOption2: "City 2",
          controller: cityController,
        ),
      ],
    );
  }
}
