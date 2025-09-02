import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ShowImageProductWidget extends StatelessWidget {
  final String appImage;

  const ShowImageProductWidget({super.key, required this.appImage});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 395.h,
      child: Stack(
        children: [
          Image(
            height: 395.h,
            width: double.infinity,
            fit: BoxFit.cover,
            image: AssetImage(appImage),
          ),
          Padding(
            padding:  EdgeInsets.only(top: 30.h, left: 15.w),
            child: IconButton(
              onPressed: () {
                log("Image");
              },
              icon:  Icon(
                Icons.arrow_back,
                size: 30.sp,
                color: Color(0xff43152A),
              ),
            ),
          )
        ],
      ),
    );
  }
}
