import 'dart:developer';
import 'package:my_salon/core/Widgets/Form%20Button%20Widget/Text_button_white_widget.dart';
import 'package:my_salon/core/colors/Background_color_pages.dart';
import 'package:my_salon/core/model/Booking_Date_Model.dart';
import 'package:my_salon/core/style/app_text_styles.dart';
import 'package:my_salon/featchers/Home/presentation/pages/Provider_Profile_Page.dart';
import 'package:my_salon/featchers/Profile/presentation/widgets/My%20Order%20Widgets/Order%20Item/Provider_Details_Widget.dart';
import 'package:my_salon/featchers/Profile/presentation/widgets/My%20Order%20Widgets/Order%20Item/order%20details%20widget/order_details_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OrderItemWidget extends StatelessWidget {
  final double height;
  final int orderId;
  final BookingDate date;
  final double price;
  final String providerAppImage;
  final String providerName;
  final String providerSpecialty;
  final List<Widget> additionalWidgets;
  final bool isGuest;

  const OrderItemWidget({
    this.isGuest = true,
    super.key,
    required this.height,
    required this.orderId,
    required this.date,
    required this.price,
    required this.providerAppImage,
    required this.providerName,
    required this.providerSpecialty,
    this.additionalWidgets = const [],
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Color(0xffF7F7F7),
      elevation: 4,
      margin: EdgeInsets.only(left: 2.w, bottom: 5.h, right: 5.w),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.r),
      ),
      child: SizedBox(
        height: height.h,
        width: 384.w,
        child: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(15.r),
                bottomLeft: Radius.circular(15.r),
              ),
              child: SizedBox(
                height: double.infinity,
                width: 16.w,
                child: BackgroundColorPages(),
              ),
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 5.h),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    OrderDetailsWidget(
                      orderId: orderId,
                      date: date,
                      price: price,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ProviderDetailsWidget(
                          appImage: providerAppImage,
                          name: providerName,
                          specialty: providerSpecialty,
                        ),
                        if (!isGuest)
                          TextButtonWhiteWidget(
                            width: 108,
                            hight: 39,
                            buttonColor:
                                const Color.fromARGB(111, 255, 255, 255),
                            onPressed: () {
                              log("onPressed");
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          ProviderProfilePage()));
                            },
                            borderColor: Color(0xffE3E3E3),
                            label: "View Profile",
                            appTextStyles: AppTextStyles.white13w700
                                .copyWith(color: Color(0xff000000)),
                          ),
                      ],
                    ),
                    ...additionalWidgets,
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
