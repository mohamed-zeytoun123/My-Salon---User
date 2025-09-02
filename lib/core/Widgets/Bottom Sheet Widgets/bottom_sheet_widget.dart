import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BottomSheetWidget extends StatelessWidget {
  final Widget child;
  final double height;

  const BottomSheetWidget({
    super.key,
    required this.child,
    required this.height,
  });

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: ClipRRect(
        borderRadius: BorderRadius.vertical(top: Radius.circular(30.r)),
        child: Container(
          height: height.h,
          width: double.infinity,
          decoration: const BoxDecoration(
            color: Color(0xffFFFFFF),
            boxShadow: [
              BoxShadow(
                color: Colors.black26,
                blurRadius: 8,
                offset: Offset(0, -2),
              ),
            ],
          ),
          child: child,
        ),
      ),
    );
  }
}
