import 'dart:developer';
import 'package:my_salon/core/Widgets/Bottom%20Sheet%20Widgets/Bottom_Sheet_Widget.dart';
import 'package:my_salon/core/Widgets/Form%20Button%20Widget/text_button_color_main_widget.dart';
import 'package:my_salon/core/style/app_text_styles.dart';
import 'package:my_salon/featchers/Profile/presentation/widgets/Cancellation_Reasons_Widget.dart';
import 'package:my_salon/featchers/Profile/presentation/widgets/Dotted_Border_Text_Field_Widget.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CancelOrderPage extends StatefulWidget {
  const CancelOrderPage({super.key});

  @override
  State<CancelOrderPage> createState() => _CancelOrderPageState();
}

class _CancelOrderPageState extends State<CancelOrderPage> {
  TextEditingController controller = TextEditingController();
  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(135, 252, 252, 252),
      body: BottomSheetWidget(
          height: 740,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Reason for Cancellation".tr(),
                    style: AppTextStyles.white26ww700
                        .copyWith(color: Color(0xff565656)),
                  ),
                  Text(
                    "Please specify the reason for canceling the order".tr(),
                    style: AppTextStyles.whit16w400
                        .copyWith(color: Color(0xff515151)),
                  ),
                  CancellationReasons(
                    onSelected: (value) {
                      log(value.name);
                    },
                  ),
                  SizedBox(height: 20.h),
                  DottedBorderTextFieldWidget(
                    controller: controller,
                    hintText: 'Add reason for cancellation',
                    width: 352,
                    height: 200,
                  ),
                  SizedBox(height: 50.h),
                  Center(
                    child: TextButtonColorMainWidget(
                      width: 280,
                      hight: 46,
                      label: "Send",
                      onPressed: () {
                        log("Sending");
                        Navigator.pop(context);
                      },
                    ),
                  ),
                ],
              ),
            ),
          )),
    );
  }
}
