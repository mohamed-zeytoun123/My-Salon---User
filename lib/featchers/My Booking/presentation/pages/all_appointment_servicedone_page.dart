import 'package:my_salon/core/Widgets/custom_app_bar_widget.dart';
import 'package:my_salon/core/Widgets/Form%20Button%20Widget/Text_button_white_widget.dart';
import 'package:my_salon/core/colors/app_colors.dart';
import 'package:my_salon/core/style/app_text_styles.dart';
import 'package:my_salon/featchers/Home/data/model/dummy_data.dart';
import 'package:my_salon/featchers/Home/presentation/pages/Home_Content_Page.dart';
import 'package:my_salon/featchers/My%20Booking/presentation/pages/Track_on_Map_Page.dart';
import 'package:my_salon/featchers/My%20Booking/presentation/widget/Order_Info_Widget.dart';
import 'package:my_salon/featchers/My%20Booking/presentation/widget/Progress_Tracker_Widget.dart';
import 'package:my_salon/featchers/My%20Booking/presentation/widget/Service_Card_Widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AllAppointmentServicedonePage extends StatelessWidget {
  const AllAppointmentServicedonePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: CustomAppBarWidget(title: "All Upcoming appointment"),
        backgroundColor: AppColors.colorThird,
        body: Column(
          spacing: 15.h,
          children: [
            OrderInfoWidget(orderId: 46501, date: "Nov 16, 2024"),
            Padding(
              padding:  EdgeInsets.symmetric(horizontal: 20.w),
              child: StepProgressWidget(currentStep: 3),
            ),
            Expanded(
              child: Stack(
                children: [
                  ListView.separated(
                    padding: EdgeInsets.only(bottom: 150.h),
                    itemBuilder: (context, index) {
                      return ServiceCardWidget(
                        model: DummyData.serviceCardListDUMMY[index],
                      );
                    },
                    separatorBuilder: (context, index) => SizedBox(height: 10.h),
                    itemCount: DummyData.serviceCardListDUMMY.length,
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Padding(
                      padding:  EdgeInsets.all(20.r),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          TextButtonWhiteWidget(
                            width: 343,
                            buttonColor: AppColors.colorSecondary,
                            hight: 56,
                            label: "Track on map",
                            borderColor: AppColors.colorSecondary,
                            appTextStyles: AppTextStyles.white16w700
                                .copyWith(color: AppColors.colorThird),
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => TrackOnMapPage()));
                            },
                          ),
                          SizedBox(height: 10.h),
                          TextButtonWhiteWidget(
                            width: 343,
                            hight: 56,
                            label: "Skip",
                            appTextStyles: AppTextStyles.white16w700
                                .copyWith(color: Color(0xff26263C)),
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => HomeContentPage()));
                            },
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ));
  }
}
