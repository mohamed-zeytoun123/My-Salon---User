import 'package:my_salon/core/Widgets/Filter%20Options%20Sheet%20Widget/filter_selection_widget.dart';
import 'package:my_salon/core/colors/app_colors.dart';
import 'package:my_salon/core/style/app_text_styles.dart';
import 'package:my_salon/featchers/Home/presentation/widgets/Button_Search_widget.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RowSearchFilterWidget extends StatelessWidget {
  const RowSearchFilterWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 15.w),
      child: Align(
        alignment: Alignment.centerLeft,
        child: Row(
          spacing: 20.w,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Expanded(child: ButtonSearchWidget()),
            InkWell(
              onTap: () {
                showModalBottomSheet(
                    isScrollControlled: true,
                    context: context,
                    builder: (context) {
                      return FilterSelectionWidget();
                    });
              },
              child: Row(
                spacing: 7.w,
                children: [
                  Icon(
                    Icons.tune,
                    color: AppColors.colorSecondary,
                  ),
                  Text(
                    "Filter".tr(),
                    style: AppTextStyles.whit20w400
                        .copyWith(color: AppColors.colorSecondary),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
