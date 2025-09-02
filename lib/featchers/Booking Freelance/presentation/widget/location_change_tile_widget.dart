// ignore_for_file: deprecated_member_use

import 'dart:developer';
import 'package:my_salon/core/colors/app_colors.dart';
import 'package:my_salon/core/style/app_text_styles.dart';
import 'package:my_salon/featchers/Home/presentation/widgets/Bottom%20Sheet%20Location%20Widgets/Select_Location_Bottom_Sheet_Widget.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LocationChangeTileWidget extends StatefulWidget {
  const LocationChangeTileWidget({
    super.key,
  });

  @override
  State<LocationChangeTileWidget> createState() =>
      _LocationChangeTileWidgetState();
}

class _LocationChangeTileWidgetState extends State<LocationChangeTileWidget> {
  String label = "Location Name";

  void showBottomSheet(BuildContext context) async {
    String? selectedItem = await showModalBottomSheet<String>(
      context: context,
      isScrollControlled: true,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(20.r)),
      ),
      builder: (context) {
        return SelectableBottomSheetWidget();
      },
    );

    if (selectedItem != null) {
      log("Selected Item: $selectedItem");
      setState(() {
        label = selectedItem;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 5.h,
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              spacing: 5.w
              ,
              children: [
                Icon(
                  Icons.location_on_outlined,
                  color: Color(0xff1E1918),
                ),
                Text(
                  'Home'.tr(),
                  style:
                      AppTextStyles.white16w700.copyWith(color: Color(0xff000000)),
                )
              ],
            ),
            Material(
              color: Colors.transparent,
              child: InkWell(
                borderRadius: BorderRadius.circular(10.r),
                splashColor: Colors.black.withOpacity(0.2),
                highlightColor: Colors.black.withOpacity(0.1),
                child: DottedBorder(
                  color: const Color(0xffE3E3E3),
                  strokeWidth: 1.w,
                  dashPattern: const [5, 7],
                  borderType: BorderType.RRect,
                  radius:  Radius.circular(10.r),
                  child: Ink(
                    width: 114.w,
                    height: 27.h,
                    decoration: BoxDecoration(
                      color: AppColors.colorThird,
                      borderRadius: BorderRadius.circular(10.r),
                    ),
                    child: Center(
                      child: Text(
                        "Change".tr(),
                        style: AppTextStyles.white14w700
                            .copyWith(color: Color(0xff4A172E)),
                      ),
                    ),
                  ),
                ),
                onTap: () => showBottomSheet(context),
              ),
            ),
          ],
        ),
        Text(
          label.tr(),
          maxLines: 1,
          style: AppTextStyles.white14w400.copyWith(
            color: Color(0xff515151),
            overflow: TextOverflow.ellipsis,
          ),
        ),
      ],
    );
  }
}
