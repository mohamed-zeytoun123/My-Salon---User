import 'package:my_salon/core/style/app_text_styles.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LabelAppBarBottomSheetWidget extends StatelessWidget {
  const LabelAppBarBottomSheetWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Saved Location".tr(),
                style: AppTextStyles.white32w400Meditative
                    .copyWith(color: Color(0xff000000)),
              ),
              IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: Icon(
                    Icons.cancel,
                    size: 30.sp,
                  ))
            ],
          ),
          Text(
            "The Location you entered".tr(),
            style: AppTextStyles.white13w400.copyWith(color: Color(0xff666666)),
          ),
        ],
      ),
    );
  }
}
