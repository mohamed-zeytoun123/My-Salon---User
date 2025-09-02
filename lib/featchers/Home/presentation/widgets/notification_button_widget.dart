import 'dart:developer';
import 'package:my_salon/featchers/Notification/Presentation/pages/Notification_Page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class NotificationButtonWidget extends StatelessWidget {
  const NotificationButtonWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return IconButton(
        onPressed: () {
          log("Location pressed");
          // if (context.locale.languageCode == 'en') {
          //   context.setLocale(Locale('ar'));
          // } else {
          //   context.setLocale(Locale('en'));
          // }
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => NotificationPage()));
        },
        icon: Icon(
          Icons.notifications_none,
          size: 30.sp,
        ));
  }
}
