import 'package:my_salon/core/Widgets/Text%20Form%20Field%20Widgets/input_dotted_text_field_widget.dart';
import 'package:my_salon/core/style/app_text_styles.dart';
import 'package:my_salon/featchers/Booking%20Freelance/presentation/widget/Toggle_Option_Selector_Widget.dart';
import 'package:my_salon/featchers/Home/data/model/dummy_data.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FreelanceTimeDateNotesSectionWidget extends StatefulWidget {
  const FreelanceTimeDateNotesSectionWidget({super.key});

  @override
  State<FreelanceTimeDateNotesSectionWidget> createState() =>
      _FreelanceTimeDateNotesSectionWidgetState();
}

class _FreelanceTimeDateNotesSectionWidgetState
    extends State<FreelanceTimeDateNotesSectionWidget> {
  TextEditingController textNotificationcontroller = TextEditingController();

  @override
  void dispose() {
    textNotificationcontroller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final String today = DateFormat('dd-MM-yyyy', context.locale.toString())
        .format(DateTime.now());
    return Column(
      spacing: 10.h,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Time & Date".tr(),
          style: AppTextStyles.c24w400Meditative
              .copyWith(color: Color(0xff383838)),
        ),
        Text(
          "Choose the  date".tr(),
          style: AppTextStyles.whit16w700.copyWith(color: Color(0xff303148)),
        ),
        Container(
          padding: EdgeInsets.symmetric(vertical: 10.h, horizontal: 15.w),
          width: double.infinity,
          height: 55.h,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.r),
            border: Border.all(color: Color(0xffD9D9D9)),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                today.tr(),
                style:
                    AppTextStyles.whit16w700.copyWith(color: Color(0xff121212)),
              ),
              Icon(
                Icons.date_range_outlined,
                size: 30.sp,
                color: Color(0xff000000),
              ),
            ],
          ),
        ),
        Text(
          "Choose the Time".tr(),
          style: AppTextStyles.whit16w700.copyWith(color: Color(0xff000000)),
        ),
        ToggleOptionSelectorWidget(
          options: DummyData.optionsDUMMY,
          isSelectable: false,
        ),
        Text(
          "Add your Nots".tr(),
          style: AppTextStyles.whit20w400.copyWith(color: Color(0xff383838)),
        ),
        InputDottedTextfieldWidget(
          hintText: "add your notifications",
          controller: textNotificationcontroller,
          height: 107,
        ),
      ],
    );
  }
}
