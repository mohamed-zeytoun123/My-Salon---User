import 'dart:developer';
import 'package:my_salon/core/Widgets/Form%20Button%20Widget/text_button_color_main_widget.dart';
import 'package:my_salon/core/colors/app_colors.dart';
import 'package:my_salon/core/style/app_text_styles.dart';
import 'package:my_salon/featchers/Profile/presentation/widgets/Dotted_Border_Text_Field_Widget.dart';
import 'package:my_salon/featchers/Profile/presentation/widgets/Give_rating_widget.dart';
import 'package:my_salon/featchers/Profile/presentation/widgets/My%20Order%20Widgets/Order%20Item/Provider_Details_Widget.dart';
import 'package:my_salon/featchers/Profile/presentation/widgets/Upload_Photo_Widget.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RatingOrderPage extends StatefulWidget {
  const RatingOrderPage({super.key});

  @override
  State<RatingOrderPage> createState() => _RatingOrderPageState();
}

class _RatingOrderPageState extends State<RatingOrderPage> {
  TextEditingController controller = TextEditingController();

  TextEditingController controller2 = TextEditingController();

  @override
  void dispose() {
    controller.dispose();
    controller2.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(169, 252, 252, 252),
      body: Center(
        child: Container(
          height: 564.h,
          width: 388.w,
          decoration: BoxDecoration(
            color: AppColors.colorThird,
            borderRadius: BorderRadius.circular(20.r),
          ),
          padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "Rating".tr(),
                style:
                    AppTextStyles.whit24w700.copyWith(color: Color(0xff2A2A2A)),
              ),
              ProviderDetailsWidget(
                  fontSizeName: 14,
                  fontSizespecialty: 12,
                  sizeimage: 29.5,
                  appImage: "https://picsum.photos/124/86?random=47",
                  name: "Provider Name",
                  specialty: "Skin Care Specialist"),
              Column(
                spacing: 20.h,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  GiveRatingWidget(),
                  Column(
                    spacing: 10.h,
                    children: [
                      Text(
                        "You Rated Services Provider 4 STars".tr(),
                        style: AppTextStyles.whit16w500
                            .copyWith(color: Color(0xff717171)),
                      ),
                    ],
                  ),
                  DottedBorderTextFieldWidget(
                    controller: controller,
                    hintText: "add your Comment",
                    height: 63,
                    width: 352,
                  ),
                  Text(
                    "Add pictures of the service after implementation".tr(),
                    style: AppTextStyles.whit16w400.copyWith(
                      color: Color(0xffA3A3A3),
                      fontSize: 15.sp,
                    ),
                  ),
                  UploadPhotoWidget(),
                  TextButtonColorMainWidget(
                      width: 280,
                      hight: 46,
                      label: "Send",
                      onPressed: () {
                        log("Send");
                        Navigator.pop(context);
                      }),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
