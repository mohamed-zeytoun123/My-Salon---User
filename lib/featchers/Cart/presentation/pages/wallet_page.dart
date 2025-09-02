import 'package:my_salon/core/Widgets/custom_app_bar_widget.dart';
import 'package:my_salon/core/colors/app_colors.dart';
import 'package:my_salon/core/style/app_text_styles.dart';
import 'package:my_salon/featchers/Cart/presentation/widgets/Card_Item_Wallet_Widget.dart';
import 'package:my_salon/featchers/Cart/presentation/widgets/Form_Header_Of_Wallet_Widget.dart';
import 'package:my_salon/featchers/Cart/presentation/widgets/Gift_Friend_Widget.dart';
import 'package:my_salon/featchers/Home/data/model/dummy_data.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class WalletPage extends StatelessWidget {
  const WalletPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.colorThird,
      appBar: CustomAppBarWidget(title: "Wallet"),
      body: Padding(
        padding:  EdgeInsets.all(15.r),
        child: SingleChildScrollView(
          child: Column(
            spacing: 10.h,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              FormHeaderOfWalletWidget(),
              GiftFriendWidget(),
              Text(
                "History".tr(),
                style: AppTextStyles.c24w400Meditative
                    .copyWith(color: Color(0xff383838)),
              ),
              for (var model in DummyData.cardItemWalletListDUMMY)
                Padding(
                  padding:  EdgeInsets.only(bottom: 10.h),
                  child: CardItemWalletWidget(model: model),
                ),
              // Expanded(
              //   child: ListView.separated(
              //       itemBuilder: (context, index) => CardItemWalletWidget(
              //             model: DummyData.cardItemWalletList[index],
              //           ),
              //       separatorBuilder: (context, index) => SizedBox(height: 10),
              //       itemCount: DummyData.cardItemWalletList.length),
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
