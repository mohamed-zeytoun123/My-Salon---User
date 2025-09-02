import 'package:my_salon/core/colors/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:my_salon/featchers/Profile/presentation/manager/cancellation_reason_enum.dart';
import 'package:my_salon/core/style/app_text_styles.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CancellationReasons extends StatefulWidget {
  final Function(CancellationReasonEnum) onSelected;

  const CancellationReasons({super.key, required this.onSelected});

  @override
  CancellationReasonsState createState() => CancellationReasonsState();
}

class CancellationReasonsState extends State<CancellationReasons> {
  CancellationReasonEnum? selectedReason;

  void _handleSelection(CancellationReasonEnum value) {
    setState(() {
      selectedReason = value;
    });
    widget.onSelected(value);
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 10.h, bottom: 10.h),
      child: Column(
        children: [
          buildReasonSelect(
            CancellationReasonEnum.changeMyMind,
            "Change my mind",
          ),
          buildReasonSelect(
            CancellationReasonEnum.noLongerNeedService,
            "I no longer need the service",
          ),
          buildReasonSelect(
            CancellationReasonEnum.didNotRespond,
            "The service provider did not respond to messages",
          ),
          buildReasonSelect(
            CancellationReasonEnum.pricesAreHigh,
            "Service provider prices are high",
          ),
        ],
      ),
    );
  }

  Widget buildReasonSelect(CancellationReasonEnum value, String title) {
    return GestureDetector(
      onTap: () => _handleSelection(value),
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 8.h),
        child: Row(
          spacing: 10.w,
          children: [
            DottedBorder(
                dashPattern: [5, 3],
                color: const Color.fromARGB(75, 158, 158, 158),
                strokeWidth: 2.w,
                borderType: BorderType.RRect,
                radius: Radius.circular(4.r),
                child: Icon(
                  Icons.check,
                  size: 22.sp,
                  weight: 10.w,
                  color: selectedReason == value
                      ? AppColors.colorSecondary
                      : Colors.transparent,
                )),
            Expanded(
              child: Text(
                title,
                style: AppTextStyles.white16w500
                    .copyWith(color: Color(0xff515151)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
