import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shimmer/shimmer.dart';

class LoadingSkeletonWidget extends StatelessWidget {
  final double width;
  final double height;

  const LoadingSkeletonWidget({
    super.key,
    this.width = double.infinity,
    this.height = 230,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width == double.infinity ? double.infinity : width.w,
      height: height == double.infinity ? double.infinity : height.h,
      child: Shimmer.fromColors(
        baseColor: Colors.grey[300]!,
        highlightColor: Colors.grey[100]!,
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 8.w),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(8.r),
          ),
          child: const SizedBox.expand(),
        ),
      ),
    );
  }
}
