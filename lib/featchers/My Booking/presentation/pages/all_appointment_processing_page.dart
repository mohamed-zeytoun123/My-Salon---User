import 'package:my_salon/core/Widgets/custom_app_bar_widget.dart';
import 'package:my_salon/core/colors/app_colors.dart';
import 'package:my_salon/featchers/Home/data/model/dummy_data.dart';
import 'package:my_salon/featchers/My%20Booking/presentation/pages/All_Appointment_Servicedone_Page.dart';
import 'package:my_salon/featchers/My%20Booking/presentation/widget/Order_Info_Widget.dart';
import 'package:my_salon/featchers/My%20Booking/presentation/widget/Price_Details_Widget.dart';
import 'package:my_salon/featchers/My%20Booking/presentation/widget/Progress_Tracker_Widget.dart';
import 'package:my_salon/featchers/My%20Booking/presentation/widget/Service_Card_Widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AllAppointmentProcessingPage extends StatelessWidget {
  const AllAppointmentProcessingPage({super.key});

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
            padding: EdgeInsets.symmetric(horizontal: 20.w),
            child: StepProgressWidget(currentStep: 2),
          ),
          Expanded(
              child: ListView.separated(
                  itemBuilder: (context, index) {
                    return InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    AllAppointmentServicedonePage()));
                      },
                      child: ServiceCardWidget(
                        model: DummyData.serviceCardListDUMMY[index],
                      ),
                    );
                  },
                  separatorBuilder: (context, index) {
                    return SizedBox(height: 10.h);
                  },
                  itemCount: DummyData.serviceCardListDUMMY.length)),
          Padding(
              padding:  EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
              child: PriceDetailsWidget(
                priceItem: 36,
                priceFees: 3.9,
                priceTotal: 39.9,
              ))
        ],
      ),
    );
  }
}
