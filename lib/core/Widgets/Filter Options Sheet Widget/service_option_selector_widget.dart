import 'package:my_salon/core/colors/app_colors.dart';
import 'package:my_salon/core/style/app_text_styles.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ServiceOptionSelectorWidget extends StatefulWidget {
  final Function(String) onSelectionChanged;

  const ServiceOptionSelectorWidget(
      {super.key, required this.onSelectionChanged});

  @override
  ServiceOptionSelectorWidgetState createState() =>
      ServiceOptionSelectorWidgetState();
}

class ServiceOptionSelectorWidgetState
    extends State<ServiceOptionSelectorWidget> {
  int _selectedIndex = 0;
  final List<String> _options = ["Salon", "In home"];

  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 10.w,
      children: [
        Expanded(child: selectButton("Salon", 0)),
        Expanded(child: selectButton("In home", 1)),
      ],
    );
  }

  Widget selectButton(String label, int index) {
    bool isSelected = _selectedIndex == index;

    return GestureDetector(
      onTap: () {
        setState(() {
          _selectedIndex = index;
        });

        widget.onSelectionChanged(_options[index]);
      },
      child: Container(
        height: 45.h,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color:
              isSelected ? AppColors.colorSecondary : const Color(0xffEFEFFB),
          borderRadius: BorderRadius.circular(25.r),
        ),
        child: Text(
          label.tr(),
          style: AppTextStyles.white13w700NunitoSans.copyWith(
            color: isSelected ? Colors.white : const Color(0xff57597E),
          ),
        ),
      ),
    );
  }
}
