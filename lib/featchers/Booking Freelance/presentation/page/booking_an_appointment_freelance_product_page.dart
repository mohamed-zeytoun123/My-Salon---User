import 'dart:developer';
import 'package:my_salon/core/Widgets/custom_app_bar_widget.dart';
import 'package:my_salon/core/Widgets/Form%20Button%20Widget/Text_button_white_widget.dart';
import 'package:my_salon/core/colors/app_colors.dart';
import 'package:my_salon/core/style/app_text_styles.dart';
import 'package:my_salon/featchers/Booking%20Freelance/presentation/page/Booking_Confirmation_Freelance_Page.dart';
import 'package:my_salon/featchers/Booking%20Freelance/presentation/widget/Freelance_Provider_Info_Tile_Widget.dart';
import 'package:my_salon/featchers/Booking%20Freelance/presentation/widget/Service_Info_With_Price_And_Quantity_Widget.dart';
import 'package:my_salon/featchers/Booking%20Freelance/presentation/widget/Freelance_Time_Date_Notes_Section_Widget.dart';
import 'package:my_salon/featchers/Home/data/model/Add_Service_Model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BookingAnAppointmentFreelanceProductPage extends StatefulWidget {
  const BookingAnAppointmentFreelanceProductPage(
      {super.key, required this.addedServices});

  final List<AddServiceModel> addedServices;

  @override
  State<BookingAnAppointmentFreelanceProductPage> createState() =>
      _BookingAnAppointmentFreelanceProductPageState();
}

class _BookingAnAppointmentFreelanceProductPageState
    extends State<BookingAnAppointmentFreelanceProductPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBarWidget(title: "Booking an Appointment"),
      backgroundColor: AppColors.colorThird,
      bottomNavigationBar: SizedBox(
        width: double.infinity,
        height: 100.h,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 10.w ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              TextButtonWhiteWidget(
                  width: 160,
                  hight: 55,
                  label: "Continue Shopping",
                  borderColor: Color(0xffE3E3E3),
                  appTextStyles: AppTextStyles.white13w400
                      .copyWith(color: Color(0xff57597E)),
                  buttonColor: AppColors.colorThird,
                  onPressed: () async {
                    log("Continue Shopping");

                    Navigator.pop(context, widget.addedServices);

                    setState(() {});
                  }),
              TextButtonWhiteWidget(
                width: 160,
                hight: 55,
                label: "Confirm Booking And Pay",
                borderColor: Color(0xffE3E3E3),
                appTextStyles: AppTextStyles.whit12w400
                    .copyWith(color: AppColors.colorThird),
                buttonColor: Color(0xff3E0C0C),
                onPressed: () {
                  double finalCost = 0;
                  for (var service in widget.addedServices) {
                    finalCost += service.price * service.number;
                  }

                  log("Confirm Booking And Pay");
                  log("لك شووووووف : $finalCost");

                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => BookingConfirmationFreelancePage(
                        price: finalCost,
                      ),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 10.h),
        child: SingleChildScrollView(
          child: Column(
            spacing: 10.h,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              FreelanceProviderInfoTileWidget(),
              ListView.separated(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) {
                  return ServiceInfoWithPriceAndQuantityWidget(
                    service: widget.addedServices[index],
                    addedServices: widget.addedServices,
                    index: index,
                  );
                },
                separatorBuilder: (context, index) => SizedBox(height: 5.h),
                itemCount: widget.addedServices.length,
              ),
              FreelanceTimeDateNotesSectionWidget(),
            ],
          ),
        ),
      ),
    );
  }
}
