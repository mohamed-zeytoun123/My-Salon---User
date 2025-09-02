import 'package:my_salon/core/style/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProductRatingPercentageWidget extends StatelessWidget {
  final double rating;
  final Color colorborder;
  final Color colorform;

  const ProductRatingPercentageWidget({
    super.key,
    required this.rating,
    this.colorborder = const Color.fromARGB(132, 255, 193, 7),
    this.colorform = const Color.fromARGB(19, 132, 84, 20),
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 18.h,
      width: 46.w,
      decoration: BoxDecoration(
        color: colorform,
        border: Border.all(color: colorborder),
        borderRadius: BorderRadius.circular(11.r),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.star_purple500_sharp,
            size: 15.sp,
            color: const Color(0xffFFC252),
          ),
          Text(
            rating.toStringAsFixed(1),
            style:
                AppTextStyles.whit11w500.copyWith(color: const Color(0xff000000)),
          ),
        ],
      ),
    );
  }
}
