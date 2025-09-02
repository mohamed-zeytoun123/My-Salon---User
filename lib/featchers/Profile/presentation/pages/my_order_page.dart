import 'package:my_salon/core/colors/app_colors.dart';
import 'package:my_salon/core/style/app_text_styles.dart';
import 'package:my_salon/featchers/Profile/presentation/widgets/My%20Order%20Widgets/List_Order_Canceled_Widget.dart';
import 'package:my_salon/featchers/Profile/presentation/widgets/My%20Order%20Widgets/List_Order_Complete_Widget.dart';
import 'package:my_salon/featchers/Profile/presentation/widgets/My%20Order%20Widgets/List_Order_Pending_Widget.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MyOrderPage extends StatelessWidget {
  const MyOrderPage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color(0xffFFFFFF),
          title: Text(
            "My Order".tr(),
            style: AppTextStyles.c28w400Meditative.copyWith(
              color: const Color(0xff000000),
            ),
          ),
          elevation: 0,
          bottom: PreferredSize(
            preferredSize: Size.fromHeight(50.h),
            child: Column(
              children: [
                Divider(color: Color(0xffD9D9D9), thickness: 1.0, height: 1.h),
                TabBar(
                  unselectedLabelStyle:
                      AppTextStyles.white24w400Meditative.copyWith(
                    fontSize: 22.sp,
                    color: Color(0xff4A172E),
                  ),
                  labelStyle: AppTextStyles.white24w400Meditative.copyWith(
                    color: Color(0xff4A172E),
                    fontSize: 22.sp,
                  ),
                  indicatorColor: Color(0xFF4E1830),
                  indicatorWeight: 3.w,
                  labelColor: Color(0xFF4E1830),
                  unselectedLabelColor: Colors.grey,
                  indicatorSize: TabBarIndicatorSize.tab,
                  tabs: [
                    Tab(text: "Pending".tr()),
                    Tab(text: "Complete".tr()),
                    Tab(text: "Canceled".tr()),
                  ],
                ),
              ],
            ),
          ),
        ),
        backgroundColor: AppColors.colorThird,
        body: Padding(
          padding:  EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
          child: const TabBarView(
            children: [
              ListOrderPendingWidget(),
              ListOrderCompleteWidget(),
              ListOrderCanceledWidget(),
            ],
          ),
        ),
      ),
    );
  }
}
