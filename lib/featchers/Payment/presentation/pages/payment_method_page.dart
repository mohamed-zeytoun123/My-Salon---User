import 'dart:developer';
import 'package:my_salon/featchers/Payment/presentation/widgets/Bottom_Sheet_Add_Payment_Method_Widget.dart';
import 'package:flutter/material.dart';
import 'package:my_salon/core/Widgets/custom_app_bar_widget.dart';
import 'package:my_salon/core/Widgets/Form%20Button%20Widget/text_button_color_main_widget.dart';
import 'package:my_salon/core/Widgets/Form%20Button%20Widget/Text_button_white_widget.dart';
import 'package:my_salon/core/assets/app_icon.dart';
import 'package:my_salon/core/colors/app_colors.dart';
import 'package:my_salon/core/style/app_text_styles.dart';
import 'package:my_salon/featchers/Profile/presentation/widgets/Card_Method_Payment_Widget.dart';
import 'package:my_salon/featchers/Profile/presentation/widgets/Card_Method_Payment_Of_Wallet_Widget.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PaymentMethodPage extends StatefulWidget {
  const PaymentMethodPage({super.key});

  @override
  PaymentMethodPageState createState() => PaymentMethodPageState();
}

class PaymentMethodPageState extends State<PaymentMethodPage> {
  int? selectedIndex;

  @override
  void initState() {
    selectedIndex = null;
    super.initState();
  }

  TextEditingController controllerDate = TextEditingController();
  TextEditingController controllerCVV = TextEditingController();

  @override
  void dispose() {
    controllerCVV.dispose();
    controllerDate.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBarWidget(title: "Payment Method"),
      backgroundColor: AppColors.colorThird,
      resizeToAvoidBottomInset: true,
      bottomNavigationBar: Container(
        padding:  EdgeInsets.only(left: 15.w, right: 15.w, bottom: 40.h),
        decoration: const BoxDecoration(
          color: Colors.transparent,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          spacing: 10.w,
          children: [
            TextButtonWhiteWidget(
              width: 155,
              hight: 56,
              onPressed: () {
                log("Add Another Method");
                showModalBottomSheet(
                  context: context,
                  isScrollControlled: true,
                  backgroundColor: Colors.transparent,
                  builder: (context) => Padding(
                    padding: EdgeInsets.only(
                      bottom: MediaQuery.of(context).viewInsets.bottom,
                    ),
                    child: BottomSheetAddPaymentMethodWidget(),
                  ),
                );
              },
              borderColor: Color(0xffE3E3E3),
              label: "Add Another Method",
              buttonColor: AppColors.colorThird,
              appTextStyles:
                  AppTextStyles.white14w700.copyWith(color: Color(0xff1A1A1A)),
            ),
            TextButtonColorMainWidget(
                width: 155,
                hight: 56,
                label: "Chose",
                onPressed: () {
                  log("Chose");
                },
                colorLabel: selectedIndex == null ? Color(0xff43152A) : null,
                background: selectedIndex == null ? Color(0xffE3E3E3) : null),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding:  EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h
         
          ),
          child: Column(
            spacing: 5.h,
            children: [
              CardMethodPaymentWidget(
                image: AppIcon.visa,
                title: "**** **** **** 3297",
                subtitle: "Expires 12/24",
                isSelected: selectedIndex == 0,
                onTap: () {
                  setState(() {
                    selectedIndex = 0;
                  });
                },
              ),
              CardMethodPaymentWidget(
                image: AppIcon.icon3,
                title: "**** **** **** 3297",
                subtitle: "Expires 12/24",
                isSelected: selectedIndex == 1,
                onTap: () {
                  setState(() {
                    selectedIndex = 1;
                  });
                },
              ),
              CardMethodPaymentWidget(
                image: AppIcon.icon2,
                title: "**** **** **** 3297",
                subtitle: "Expires 12/24",
                isSelected: selectedIndex == 2,
                onTap: () {
                  setState(() {
                    selectedIndex = 2;
                  });
                },
              ),
              CardMethodPaymentWidget(
                image: AppIcon.tabby,
                title: "**** **** **** 3297",
                subtitle: "Expires 12/24",
                isSelected: selectedIndex == 3,
                onTap: () {
                  log("tabby");
                  setState(() {
                    selectedIndex = 3;
                  });
                },
              ),
              CardMethodPaymentWidget(
                image: AppIcon.tamara,
                title: "**** **** **** 3297",
                subtitle: "Expires 12/24",
                isSelected: selectedIndex == 4,
                onTap: () {
                  log("tamara");
                  setState(() {
                    selectedIndex = 4;
                  });
                },
              ),
              CardMethodPaymentWidget(
                image: AppIcon.icon1,
                title: "**** **** **** 3297",
                subtitle: "Expires 12/24",
                isSelected: selectedIndex == 5,
                onTap: () {
                  log("icon1");
                  setState(() {
                    selectedIndex = 5;
                  });
                },
              ),
              CardMethodPaymentWidget(
                image: AppIcon.play,
                title: "**** **** **** 3297",
                subtitle: "Expires 12/24",
                isSelected: selectedIndex == 6,
                onTap: () {
                  log("play");
                  setState(() {
                    selectedIndex = 6;
                  });
                },
              ),
              CardMethodPaymentOfWalletWidget(),
            ],
          ),
        ),
      ),
    );
  }
}
