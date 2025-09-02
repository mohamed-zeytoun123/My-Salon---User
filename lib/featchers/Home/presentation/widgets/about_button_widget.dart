import 'dart:developer';
import 'package:my_salon/core/Widgets/status_badge_widget.dart';
import 'package:my_salon/featchers/Home/presentation/widgets/About_Provider_Dialog_Content_Widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AboutButtonWidget extends StatelessWidget {
  const AboutButtonWidget({
    super.key,
    required this.isFreelance,
  });
  final bool isFreelance;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(100.r),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: () {
            log("About");
            showDialog(
                context: context,
                builder: (context) =>
                    Dialog(child: AboutProviderDialogContentWidget()));
          },
          borderRadius: BorderRadius.circular(100.r),
          child: StatusBadgeWidget(
            width: 80.w,
            text: "About",
            textcolor: isFreelance
                ? Color.fromARGB(255, 82, 24, 47)
                : Color(0xff000000),
          ),
        ),
      ),
    );
  }
}
