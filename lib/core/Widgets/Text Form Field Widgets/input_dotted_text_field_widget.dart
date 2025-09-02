import 'package:dotted_border/dotted_border.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:my_salon/core/style/app_text_styles.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class InputDottedTextfieldWidget extends StatelessWidget {
  final String hintText;
  final TextEditingController controller;
  final double height;

  const InputDottedTextfieldWidget({
    super.key,
    required this.hintText,
    required this.controller,
    required this.height,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height.h,
      width: double.infinity,
      child: DottedBorder(
        color: const Color.fromARGB(93, 142, 139, 139),
        strokeWidth: 1.w,
        dashPattern: [2, 2],
        borderType: BorderType.RRect,
        radius: Radius.circular(10.r),
        child: TextFormField(
          controller: controller,
          maxLines: 20,
          decoration: InputDecoration(
            hintText: hintText.tr(),
            hintStyle: AppTextStyles.whit16w400.copyWith(
              color: Color.fromARGB(176, 163, 163, 163),
            ),
            filled: true,
            fillColor: Colors.white,
            border: InputBorder.none,
            enabledBorder: InputBorder.none,
            focusedBorder: InputBorder.none,
          ),
        ),
      ),
    );
  }
}
