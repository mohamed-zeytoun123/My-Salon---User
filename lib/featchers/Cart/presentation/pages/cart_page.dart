import 'package:my_salon/core/Widgets/custom_app_bar_widget.dart';
import 'package:my_salon/core/colors/app_colors.dart';
import 'package:my_salon/featchers/Cart/presentation/widgets/Cart_bottom_Navigation_Bar_Widget.dart';
import 'package:my_salon/featchers/Cart/presentation/widgets/Provider_Product_Price_Widget.dart';
import 'package:flutter/material.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.colorThird,
      appBar: CustomAppBarWidget(title: 'Cart'),
      bottomNavigationBar: CartBottomNavigationBarWidget(),
      body: ProviderProductPriceWidget(),
    );
  }
}
