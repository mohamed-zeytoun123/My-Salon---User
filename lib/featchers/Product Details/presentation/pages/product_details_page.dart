import 'package:my_salon/core/Widgets/Bottom%20Sheet%20Widgets/Bottom_Sheet_Widget.dart';
import 'package:my_salon/core/assets/app_image.dart';
import 'package:my_salon/core/colors/app_colors.dart';
import 'package:my_salon/featchers/Home/data/model/dummy_data.dart';
import 'package:my_salon/featchers/Home/presentation/widgets/Services%20Details%20Widgets/Product_Details_Widget.dart';
import 'package:my_salon/featchers/Product%20Details/presentation/widget/Provider_Product_Info_Section_Widget.dart';
import 'package:my_salon/featchers/Product%20Details/presentation/widget/Show_Image_Product_Widget.dart';
import 'package:flutter/material.dart';

class ProductDetailsPage extends StatelessWidget {
  const ProductDetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.colorThird,
        body: Stack(
          children: [
            ShowImageProductWidget(appImage: AppImage.cream),
            BottomSheetWidget(
                height: 520,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ProviderProductInfoSectionWidget(),
                    Expanded(
                      child: ProductDetailsWidget(
                        labelButton: "Add To Cart",
                        iconButton: Icons.shopping_bag_outlined,
                        iconButtonColor: Color(0xff89274F),
                        buttonColor: Color(0xff3E0C0C),
                        description:
                            "Skin care services typically include facials, chemical peels, microdermabrasion, laser treatments, and other specialized procedures that target specific skin concerns such as acne, hyperpigmentation, wrinkles, and sun damage.\n\n These treatments often use advanced technologies and high-quality ingredients to provide optimal results. Skincare services are an essential part of maintaining healthy and radiant skin.",
                        listRate: DummyData.reviewsDUMMY,
                        selectedTabColor: Color(0xff43152A),
                        isButtonIconFirst: true,
                      ),
                    ),
                  ],
                )),
          ],
        ));
  }
}
