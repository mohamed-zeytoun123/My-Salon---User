import 'package:my_salon/core/style/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProviderShowImageNameDisWidget extends StatelessWidget {
  const ProviderShowImageNameDisWidget({
    super.key,
    required this.image,
    required this.name,
    required this.discription,
    this.isShowDivider,
  });
  final String image;
  final String name;
  final String discription;
  final bool? isShowDivider;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          spacing: 10.w,
          children: [
            CircleAvatar(
              radius: 19.5.r,
              backgroundImage: NetworkImage(image, scale: 1),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: AppTextStyles.whit12w700
                      .copyWith(color: Color(0xff000000)),
                ),
                Text(
                  discription,
                  style: AppTextStyles.whit10w400
                      .copyWith(color: Color(0xff666666)),
                ),
              ],
            ),
          ],
        ),
        if (isShowDivider == true)
          Padding(
            padding: EdgeInsets.only(top: 5.h),
            child: Divider(
              color: const Color.fromARGB(58, 158, 158, 158),
              height: 1.h,
            ),
          )
      ],
    );
  }
}
