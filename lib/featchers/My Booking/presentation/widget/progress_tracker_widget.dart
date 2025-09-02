import 'package:my_salon/core/colors/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class StepProgressWidget extends StatelessWidget {
  final int currentStep;

  const StepProgressWidget({super.key, required this.currentStep});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Column(
          children: [
            SizedBox(height: 10.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: List.generate(
                  2, (index) => _buildProgressLine(currentStep > index + 1)),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: List.generate(
            3,
            (index) => _buildStep(
              index + 1,
              ["On The Way", "In Processing", "Service Done"][index],
              currentStep >= index + 1,
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildStep(int step, String label, bool isActive) {
    return Column(
      children: [
        CircleAvatar(
          radius: 14.r,
          backgroundColor:
              isActive ? AppColors.colorSecondary : Colors.grey.shade300,
          child: Text(
            "$step",
            style: TextStyle(color: isActive ? Colors.white : Colors.black),
          ),
        ),
        Text(
          label,
          style: TextStyle(
              color: isActive ? AppColors.colorSecondary : Colors.grey),
        )
      ],
    );
  }

  Widget _buildProgressLine(bool isActive) {
    return Expanded(
      child: Container(
        height: 10.h,
        color: isActive ? AppColors.colorSecondary : Colors.grey.shade300,
      ),
    );
  }
}
