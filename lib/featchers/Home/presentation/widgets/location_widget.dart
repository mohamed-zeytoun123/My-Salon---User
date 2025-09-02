import 'dart:developer';
import 'package:my_salon/core/style/app_text_styles.dart';
import 'package:my_salon/featchers/Home/presentation/widgets/Bottom%20Sheet%20Location%20Widgets/select_location_bottom_sheet_widget.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LocationWidget extends StatefulWidget {
  const LocationWidget({super.key});

  @override
  State<LocationWidget> createState() => _LocationWidgetState();
}

class _LocationWidgetState extends State<LocationWidget> {
  String label = "Location Name".tr();

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
    return InkWell(
      onTap: () => showBottomSheet(context),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Your Location".tr(),
            style: AppTextStyles.whit12w700.copyWith(color: Color(0xff252525)),
          ).tr(),
          Row(
            children: [
              Expanded(
                child: Text(
                  label.tr(),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style:
                      AppTextStyles.white10w400.copyWith(color: Color(0xff252525)),
                ),
              ),
              Icon(Icons.keyboard_arrow_down_rounded),
            ],
          ),
        ],
      ),
    );
  }
}
