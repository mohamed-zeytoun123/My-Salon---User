import 'package:my_salon/core/colors/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:my_salon/core/assets/app_image.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class ProviderHeaderSectionWidget extends StatelessWidget {
  const ProviderHeaderSectionWidget({super.key, required this.isFreelance});
  final bool isFreelance;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(
              color: isFreelance ? Color.fromARGB(255, 82, 24, 47) : null,
              gradient: isFreelance ? null : AppColors.colorMain),
        ),
        SizedBox(
          height: 200.w,
          child: Image.asset(
            AppImage.backgroundImage,
            fit: BoxFit.cover,
            width: double.infinity,
            height: double.infinity,
          ),
        ),
      ],
    );
  }
}
