// ignore_for_file: deprecated_member_use

import 'package:my_salon/core/style/app_text_styles.dart';
import 'package:my_salon/featchers/Home/presentation/manager/search.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ButtonSearchWidget extends StatefulWidget {
  const ButtonSearchWidget({super.key});

  @override
  State<ButtonSearchWidget> createState() => _ButtonSearchWidgetState();
}

class _ButtonSearchWidgetState extends State<ButtonSearchWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 35.h,
      width: 287.w,
      decoration: BoxDecoration(
        color: const Color(0xffFFFFFF),
        borderRadius: BorderRadius.circular(8.r),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 1.r,
            blurRadius: 5.r,
            offset: Offset(0, 3),
          ),
        ],
      ),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.transparent,
          elevation: 0,
          padding: EdgeInsets.all(10.r),
        ),
        child: Row(
          spacing: 15.w,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Icon(
              Icons.search,
              color: Colors.black,
            ),
            Text(
              "Search".tr(),
              style:
                  AppTextStyles.whit12w400.copyWith(color: Color(0xffCBCBCB)),
            ),
          ],
        ),
        onPressed: () async {
          await showSearch(
            context: context,
            delegate: Search(),
          );
        },
      ),
    );
  }
}
