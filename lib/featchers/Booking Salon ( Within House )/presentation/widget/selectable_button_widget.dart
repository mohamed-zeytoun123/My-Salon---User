import 'package:my_salon/core/Widgets/Form%20Button%20Widget/Text_button_white_widget.dart';
import 'package:my_salon/core/style/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'dart:developer';

enum Option { home, salon }

class SelectableButtonWidget extends StatefulWidget {
  final ValueChanged<Option> onOptionSelected;
  final bool isEnabled;

  const SelectableButtonWidget({
    super.key,
    required this.onOptionSelected,
    this.isEnabled = false,
  });

  @override
  SelectableButtonWidgetState createState() => SelectableButtonWidgetState();
}

class SelectableButtonWidgetState extends State<SelectableButtonWidget> {
  Option _selectedOption = Option.home;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        TextButtonWhiteWidget(
          width: 160,
          hight: 46,
          label: "Within the house",
          borderColor: const Color(0xffE3E3E3),
          appTextStyles: AppTextStyles.white14w400.copyWith(
            color: _selectedOption == Option.home
                ? Colors.white
                : const Color(0xff666666),
          ),
          buttonColor: _selectedOption == Option.home
              ? const Color(0xff3E0C0C)
              : Colors.white,
          onPressed: () {
            if (!widget.isEnabled) return;
            if (_selectedOption != Option.home) {
              setState(() {
                _selectedOption = Option.home;
              });
              widget.onOptionSelected(_selectedOption);
              log("Selected Option: $_selectedOption");
            }
          },
        ),
        TextButtonWhiteWidget(
          width: 160,
          hight: 46,
          label: "Within the salon",
          borderColor: const Color(0xffE3E3E3),
          appTextStyles: AppTextStyles.white14w400.copyWith(
            color: _selectedOption == Option.salon
                ? Colors.white
                : const Color(0xff666666),
          ),
          buttonColor: _selectedOption == Option.salon
              ? const Color(0xff3E0C0C)
              : Colors.white,
          onPressed: () {
            if (!widget.isEnabled) return;
            if (_selectedOption != Option.salon) {
              setState(() {
                _selectedOption = Option.salon;
              });
              widget.onOptionSelected(_selectedOption);
              log("Selected Option: $_selectedOption");
            }
          },
        ),
      ],
    );
  }
}
