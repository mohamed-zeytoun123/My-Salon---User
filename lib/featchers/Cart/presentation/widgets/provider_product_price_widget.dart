import 'dart:developer';
import 'package:my_salon/core/Widgets/Form%20Button%20Widget/Text_button_white_widget.dart';
import 'package:my_salon/core/style/app_text_styles.dart';
import 'package:my_salon/featchers/Cart/presentation/widgets/product_quantity_price_widget.dart';
import 'package:my_salon/featchers/Home/presentation/pages/Provider_Profile_Page.dart';
import 'package:my_salon/featchers/Profile/presentation/widgets/My%20Order%20Widgets/Order%20Item/Provider_Details_Widget.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProviderProductPriceWidget extends StatelessWidget {
  const ProviderProductPriceWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(vertical: 20.h, horizontal: 30.w),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ProviderDetailsWidget(
                appImage: "https://picsum.photos/124/86?random=35",
                name: "provider Name",
                specialty: "provider Specialty",
              ),
              TextButtonWhiteWidget(
                width: 108,
                hight: 39,
                buttonColor: const Color.fromARGB(111, 255, 255, 255),
                onPressed: () {
                  log("onPressed");
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ProviderProfilePage()));
                },
                borderColor: Color(0xffE3E3E3),
                label: "View Profile",
                appTextStyles: AppTextStyles.white13w700
                    .copyWith(color: Color(0xff000000)),
              ),
            ],
          ),
        ),
        Expanded(
          child: ListView.separated(
            itemBuilder: (context, index) => ProductQuantityPriceWidget(),
            separatorBuilder: (BuildContext context, int index) {
              return DottedBorder(
                color: const Color(0xffE3E3E3),
                dashPattern: const [3, 4],
                borderType: BorderType.Rect,
                padding: EdgeInsets.zero,
                child: SizedBox(width: 290.w),
              );
            },
            itemCount: 2,
          ),
        )
      ],
    );
  }
}
