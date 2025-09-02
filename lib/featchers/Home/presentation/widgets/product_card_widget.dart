// ignore_for_file: deprecated_member_use

import 'package:my_salon/featchers/All/presentation/widget/custom_toggle_state_buy.dart';
import 'package:my_salon/featchers/Home/data/model/Product_model_dummy.dart';
import 'package:my_salon/featchers/Product%20Details/presentation/pages/Product_Details_Page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProductCardWidget extends StatelessWidget {
  final ProductModelDUMMY product;
  final bool isReadyToPurchase;
  const ProductCardWidget({
    super.key,
    required this.product,
    this.isReadyToPurchase = false,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => ProductDetailsPage()));
      },
      child: Container(
        width: 173.w,
        height: 200.h,
        margin: EdgeInsets.only(left: 5.w, bottom: 15.h, right: 5.w),
        decoration: BoxDecoration(
          color: Color(0xffFFFFFF),
          borderRadius: BorderRadius.circular(15.r),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.2),
              offset: Offset(0, 4),
              blurRadius: 8.r,
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(15.r),
              child: SizedBox(
                height: 101.h,
                width: double.infinity,
                child: Image.network(
                  product.AppImage,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Padding(
              padding:  EdgeInsets.symmetric(horizontal: 9.w),
              child: Column(
                spacing: 5.h,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    product.productName,
                    overflow: TextOverflow.ellipsis,
                    maxLines: 1,
                    style: TextStyle(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w700,
                      color: Color(0xff000000),
                    ),
                  ),
                  Row(
                    spacing: 10.w,
                    children: [
                      Text(
                        overflow: TextOverflow.ellipsis,
                        "${product.originalPrice}\$",
                        style: TextStyle(
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w400,
                          color: Color(0xffF50B5F),
                          decoration: TextDecoration.lineThrough,
                          decorationColor: Color(0xffF50B5F),
                          decorationStyle: TextDecorationStyle.solid,
                        ),
                      ),
                      Text(
                        overflow: TextOverflow.ellipsis,
                        "${product.discountedPrice}\$",
                        style: TextStyle(
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w400,
                          color: Color(0xff383838),
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      if (!isReadyToPurchase)
                        Text(
                          product.description,
                          overflow: TextOverflow.ellipsis,
                          maxLines: 2,
                          style: TextStyle(
                            fontSize: 13.sp,
                            fontWeight: FontWeight.w400,
                            color: Color(0xff807C7E),
                          ),
                        )
                      else
                        CustomToggleStateBuyWidget()
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
