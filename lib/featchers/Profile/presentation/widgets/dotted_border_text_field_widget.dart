import 'package:my_salon/core/style/app_text_styles.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DottedBorderTextFieldWidget extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;
  final double height;
  final double width;

  const DottedBorderTextFieldWidget({
    super.key,
    required this.controller,
    required this.hintText,
    required this.height,
    required this.width,
  });

  @override
  Widget build(BuildContext context) {
    return DottedBorder(
      dashPattern: [5, 3],
      color: const Color.fromARGB(75, 158, 158, 158),
      strokeWidth: 2.w,
      borderType: BorderType.RRect,
      radius: Radius.circular(8.r),
      child: SizedBox(
        width: width.w,
        height: height.h,
        child: TextFormField(
          controller: controller,
          maxLines: 5,
          decoration: InputDecoration(
            hintStyle:
                AppTextStyles.white13w400.copyWith(color: Color(0xffA3A3A3)),
            hintText: hintText,
            contentPadding: EdgeInsets.symmetric(
              vertical: 20.0.h,
              horizontal: 10.0.w,
            ),
            border: InputBorder.none,
          ),
        ),
      ),
    );
  }
}
// width: 352,
//         height: 200,
//
//             hintText: 'Add reason for cancellation',
