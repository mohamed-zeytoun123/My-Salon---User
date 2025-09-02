import 'package:flutter/material.dart';
import 'package:my_salon/core/style/app_text_styles.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProviderDetailsWidget extends StatelessWidget {
  final String appImage;
  final String name;
  final String specialty;
  final double fontSizeName;
  final double fontSizespecialty;
  final double sizeimage;

  const ProviderDetailsWidget({
    super.key,
    required this.appImage,
    required this.name,
    required this.specialty,
    this.fontSizeName = 12,
    this.fontSizespecialty = 10,
    this.sizeimage = 19.5,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 5.w,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        CircleAvatar(
          radius: sizeimage.r,
          backgroundImage: NetworkImage(appImage),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              name,
              style: AppTextStyles.whit12w700.copyWith(
                  color: Color(0xff000000), fontSize: fontSizespecialty.sp),
            ),
            Text(
              specialty,
              style: AppTextStyles.whit10w400.copyWith(
                  color: Color(0xff666666), fontSize: fontSizespecialty),
            ),
          ],
        )
      ],
    );
  }
}
