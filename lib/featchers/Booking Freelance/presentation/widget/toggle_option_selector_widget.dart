import 'package:my_salon/core/model/Body%20Appointment%20Card%20Model/booking_date_time_model.dart';
import 'package:my_salon/core/model/Body%20Appointment%20Card%20Model/enum_Time_Period_model.dart';
import 'package:my_salon/core/style/app_text_styles.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:my_salon/core/colors/app_colors.dart';
import 'package:my_salon/featchers/Booking%20Freelance/data/model/option_model_dummy.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ToggleOptionSelectorWidget extends StatefulWidget {
  final Function(BookingTime)? onQuantitySelected;
  final bool isSelectable;
  final List<OptionModelDUMMY> options;
  final BookingTime? selectedTime;

  const ToggleOptionSelectorWidget({
    super.key,
    required this.options,
    this.onQuantitySelected,
    this.isSelectable = true,
    this.selectedTime,
  });

  @override
  State<ToggleOptionSelectorWidget> createState() =>
      _ToggleOptionSelectorWidgetState();
}

class _ToggleOptionSelectorWidgetState
    extends State<ToggleOptionSelectorWidget> {
  BookingTime? _selectedTime;

  @override
  void initState() {
    super.initState();
    _selectedTime = widget.selectedTime;

    if (!widget.isSelectable && _selectedTime == null) {
      final firstEnabledOption = widget.options.firstWhere(
        (option) => option.isEnabled,
        orElse: () => OptionModelDUMMY(
            time: BookingTime(hour: 0, minute: 0, period: TimePeriod.AM),
            isEnabled: false),
      );

      if (firstEnabledOption.isEnabled) {
        _selectedTime = firstEnabledOption.time;
        widget.onQuantitySelected?.call(_selectedTime!);
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    if (widget.options.isEmpty) {
      return Row(
        spacing: 6.w,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "There are no times on this day".tr(),
            style: AppTextStyles.whit16w500.copyWith(
                color: const Color.fromARGB(180, 255, 82, 82),
                fontStyle: FontStyle.italic),
          ),
          Icon(
            Icons.event_busy,
            color: const Color.fromARGB(180, 255, 82, 82),
          ),
        ],
      );
    } else {
      return Wrap(
        spacing: 10.w,
        runSpacing: 10.h,
        children: List.generate(widget.options.length, (index) {
          return _buildOption(index: index);
        }),
      );
    }
  }

  Widget _buildOption({required int index}) {
    final option = widget.options[index];
    final isSelected = _selectedTime == option.time;

    Color borderColor;
    Color backgroundColor;
    Color textColor;

    if (!option.isEnabled) {
      borderColor = const Color.fromARGB(255, 239, 239, 239);
      backgroundColor = AppColors.colorThird;
      textColor = const Color.fromARGB(84, 164, 164, 164);
    } else if (isSelected) {
      borderColor = const Color(0xff4A172E);
      backgroundColor = const Color.fromARGB(162, 198, 192, 192);
      textColor = const Color(0xff383838);
    } else {
      borderColor = const Color.fromARGB(153, 121, 121, 121);
      backgroundColor = AppColors.colorThird;
      textColor = const Color.fromARGB(255, 159, 152, 152);
    }

    return AnimatedContainer(
      duration: const Duration(milliseconds: 300),
      alignment: Alignment.center,
      width: 100.w,
      height: 34.h,
      margin:  EdgeInsets.only(bottom: 10.h),
      decoration: BoxDecoration(
        color: backgroundColor,
        border: Border.all(color: borderColor),
        borderRadius: BorderRadius.circular(10.r),
      ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: option.isEnabled && widget.isSelectable
              ? () {
                  setState(() {
                    _selectedTime = option.time;
                  });
                  widget.onQuantitySelected?.call(option.time);
                }
              : null,
          splashColor: const Color(0xff4A172E),
          highlightColor: const Color(0xffF1F1F1),
          borderRadius: BorderRadius.circular(10.r),
          child: Center(
            child: Text(
              "${option.time.formattedTime} ${option.time.period.name}".tr(),
              style: TextStyle(
                color: textColor,
                fontSize: 14.sp,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
