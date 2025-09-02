import 'package:my_salon/core/Widgets/Text%20Form%20Field%20Widgets/Custom_Dropdown_Field_State_Widget.dart';
import 'package:my_salon/core/style/app_text_styles.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SalonDropdownWidget extends StatefulWidget {
  const SalonDropdownWidget({super.key});

  @override
  State<SalonDropdownWidget> createState() => _SalonDropdownWidgetState();
}

class _SalonDropdownWidgetState extends State<SalonDropdownWidget> {
  final TextEditingController salonController = TextEditingController();
  @override
  void dispose() {
    salonController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 10.w,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Salon".tr(),
          style: AppTextStyles.white14w600NunitoSans
              .copyWith(color: Color(0xff000000)),
        ),
        CustomDropdownFieldWidget(
          hint: "Salon",
          option1: 'Salon',
          option2: "In Home",
          valueOption1: "Salon",
          valueOption2: "In Home",
          controller: salonController,
        ),
      ],
    );
  }
}
