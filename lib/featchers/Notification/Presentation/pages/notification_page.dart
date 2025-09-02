import 'package:my_salon/core/Widgets/custom_app_bar_widget.dart';
import 'package:my_salon/core/colors/app_colors.dart';
import 'package:my_salon/core/style/app_text_styles.dart';
import 'package:my_salon/featchers/Home/data/model/dummy_data.dart';
import 'package:my_salon/featchers/Notification/Presentation/widget/notification_card_widget.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class NotificationPage extends StatelessWidget {
  const NotificationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.colorThird,
      appBar: CustomAppBarWidget(title: "Notification"),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 12.w),
                  child: Text(
                    "New".tr(),
                    style: AppTextStyles.c24w400Meditative.copyWith(
                      color: Color(0xff717171),
                      fontSize: 18.sp,
                    ),
                  ),
                ),
                ...List.generate(DummyData.notificationListDUMMY.length,
                    (index) {
                  return NotificationCardWidget(
                      appImage: DummyData.notificationListDUMMY[index].AppImage,
                      userName: DummyData.notificationListDUMMY[index].userName,
                      messageText:
                          DummyData.notificationListDUMMY[index].messageText,
                      date: DummyData.notificationListDUMMY[index].date);
                }),
              ],
            ),
            Divider(
              color: Color.fromARGB(132, 183, 216, 237),
              thickness: 2,
            ),
            ...List.generate(DummyData.notificationListDUMMY.length, (index) {
              return NotificationCardWidget(
                  appImage: DummyData.notificationListDUMMY[index].AppImage,
                  userName: DummyData.notificationListDUMMY[index].userName,
                  messageText:
                      DummyData.notificationListDUMMY[index].messageText,
                  date: DummyData.notificationListDUMMY[index].date);
            }),
          ],
        ),
      ),
    );
  }
}
