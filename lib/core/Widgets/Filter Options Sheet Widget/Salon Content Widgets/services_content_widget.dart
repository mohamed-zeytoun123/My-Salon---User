// ignore_for_file: file_names, must_be_immutable

import 'package:my_salon/core/Widgets/Text%20Form%20Field%20Widgets/Custom_Dropdown_Field_State_Widget.dart';
import 'package:my_salon/core/style/app_text_styles.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ServicesContentWidget extends StatefulWidget {
  const ServicesContentWidget({super.key});

  @override
  State<ServicesContentWidget> createState() => _ServicesContentWidgetState();
}

class _ServicesContentWidgetState extends State<ServicesContentWidget> {
  final TextEditingController servicesController = TextEditingController();
  @override
  void dispose() {
    servicesController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 10.h,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Services".tr(),
          style: AppTextStyles.white14w600NunitoSans
              .copyWith(color: Color(0xff000000)),
        ),
        CustomDropdownFieldWidget(
          hint: "Services",
          option1: 'Services',
          option2: "Product",
          valueOption1: "Services",
          valueOption2: "Product",
          controller: servicesController,
        ),
      ],
    );
  }
}
