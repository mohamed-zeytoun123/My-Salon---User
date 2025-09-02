import 'dart:developer';
import 'package:my_salon/core/Widgets/custom_app_bar_widget.dart';
import 'package:my_salon/core/Widgets/Form%20Button%20Widget/Text_button_white_widget.dart';
import 'package:my_salon/core/style/app_text_styles.dart';
import 'package:my_salon/featchers/Booking%20Freelance/presentation/page/booking_an_appointment_freelance_product_page.dart';
import 'package:my_salon/featchers/Home/data/model/Add_Service_Model.dart';
import 'package:my_salon/featchers/Home/data/model/dummy_data.dart';
import 'package:my_salon/featchers/Home/presentation/pages/Provider_Profile_Page.dart';
import 'package:my_salon/featchers/Home/presentation/widgets/Services%20Details%20Widgets/Product_Details_Widget.dart';
import 'package:my_salon/featchers/Home/presentation/widgets/Rating_stars_widget.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ServicesDetailsFreelancePage extends StatelessWidget {
  const ServicesDetailsFreelancePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFFFFFF),
      appBar: CustomAppBarWidget(title: "Services Details"),
      body: Column(
        spacing: 15.h,
        children: [
          Padding(
            padding:  EdgeInsets.only(left: 20.w, right: 20.w, top: 20.h),
            child: Column(
              spacing: 10.h,
              children: [
                Container(
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(15.r)),
                  height: 212.08177185058594.h,
                  width: 388.w,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(15.r),
                    child: Image.network(
                      "https://picsum.photos/124/86?random=144",
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      spacing: 20.w,
                      children: [
                        CircleAvatar(
                          radius: 23.5.r,
                          backgroundImage: NetworkImage(
                            "https://picsum.photos/124/86?random=165",
                          ),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Service Name".tr(),
                              style: AppTextStyles.white24w400Meditative
                                  .copyWith(color: Color(0xff383838)),
                            ),
                            RatingStarsWidget(
                              isShowRating: true,
                              rating: 5,
                              sizeStar: 22,
                              titleStyle: AppTextStyles.whit18w400FamiljenGrotesk,
                            )
                          ],
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Text(
                            overflow: TextOverflow.ellipsis,
                            "23.3\$".tr(),
                            style: AppTextStyles.whit24w700.copyWith(
                              color: Color(0xff383838),
                            )),
                        Text(
                            overflow: TextOverflow.ellipsis,
                            "23.4\$".tr(),
                            style: AppTextStyles.white14w400.copyWith(
                              color: Color(0xffF50B5F),
                              decoration: TextDecoration.lineThrough,
                              decorationColor: Color(0xffF50B5F),
                              decorationStyle: TextDecorationStyle.solid,
                            )),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
          Expanded(
            child: Column(
              children: [
                Padding(
                  padding:  EdgeInsets.only(left: 10.w, right: 20.w),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        spacing: 10.w,
                        children: [
                          CircleAvatar(
                            radius: 19.5.r,
                            backgroundImage: NetworkImage(
                              "https://picsum.photos/124/86?random=165",
                            ),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Provider Name".tr(),
                                style: AppTextStyles.whit12w700
                                    .copyWith(color: Color(0xff000000)),
                              ),
                              Text(
                                "Skin Care Specialist".tr(),
                                style: AppTextStyles.whit10w400
                                    .copyWith(color: Color(0xff666666)),
                              ),
                            ],
                          ),
                        ],
                      ),
                      TextButtonWhiteWidget(
                          width: 108,
                          hight: 39,
                          label: "View Profile",
                          onPressed: () {
                            log("View Profile");
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        ProviderProfilePage()));
                          },
                          borderColor: Color(0xffE3E3E3),
                          appTextStyles: AppTextStyles.white13w400
                              .copyWith(color: Color(0XFF000000))),
                    ],
                  ),
                ),
                Expanded(
                    child: ProductDetailsWidget(
                  buttonColor: Color(0xff3E0C0C),
                  labelButton: "Book",
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                BookingAnAppointmentFreelanceProductPage(
                                  addedServices: [
                                    AddServiceModel(
                                        price: 9.7, title: "Mohamed"),
                                  ],
                                )));
                  },
                  iconButton: Icons.calendar_today_outlined,
                  isButtonIconFirst: true,
                  iconButtonColor: Color(0xff89274F),
                  selectedTabColor: Color(0xff3E0C0C),
                  description:
                      "Lorem Ipsum Dolor Sit Amet, Consectetur Adipiscing Elit, Sed Do Eiusmod Tempor Incididunt Ut Labore Et Dolore Magna Aliqua. Ut Enim Ad Minim Veniam, Quis Nostrud Exercitation Ullamco Laboris Nisi Ut Aliquip Ex Ea Commodo Consequat. ",
                  listRate: DummyData.reviewsDUMMY,
                ))
              ],
            ),
          ),
        ],
      ),
    );
  }
}
