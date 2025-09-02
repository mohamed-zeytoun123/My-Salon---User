// ignore_for_file: deprecated_member_use

import 'package:my_salon/featchers/Home/data/model/rate_product_details_model_dummy.dart';
import 'package:my_salon/featchers/Home/presentation/widgets/Services%20Details%20Widgets/User_Rating_Widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RatingCardWidget extends StatelessWidget {
  final RateProductDetailsModelDUMMY model;
  const RatingCardWidget({
    super.key,
    required this.model,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 68.h,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Color(0xffFFFFFF),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.2),
            blurRadius: 5.r,
            offset: Offset(0, 4),
          ),
        ],
        borderRadius: BorderRadius.circular(15.r),
      ),
      child: Padding(
        padding:  EdgeInsets.symmetric(horizontal: 20.w
        , vertical: 5.h),
        child: UserRatingWidget(model: model),
      ),
    );
  }
}
