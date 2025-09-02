import 'package:my_salon/core/Widgets/row_search_filter_widget.dart';
import 'package:my_salon/featchers/Home/data/model/Product_model_dummy.dart';
import 'package:my_salon/featchers/Home/data/model/dummy_data.dart';
import 'package:my_salon/featchers/Home/presentation/widgets/Product_Card_widget.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AllProductWidget extends StatefulWidget {
  const AllProductWidget({
    super.key,
  });

  @override
  AllProductWidgetState createState() => AllProductWidgetState();
}

class AllProductWidgetState extends State<AllProductWidget> {
  int _selectedIndex = 0;

  List<ProductModelDUMMY> getFilteredList() {
    if (_selectedIndex == 0) {
      return DummyData.productsDUMMY
          .where((item) => item.discountedPrice == 149)
          .toList();
    } else if (_selectedIndex == 1) {
      return DummyData.productsDUMMY;
    } else {
      return DummyData.productsDUMMY
          .where((item) => item.discountedPrice == 180)
          .toList();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(vertical: 10.h),
          child: RowSearchFilterWidget(),
        ),
        Container(
          padding: EdgeInsets.symmetric(vertical: 10.h),
          color: const Color(0xffFFFFFF),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              tabButton("Makeup", 0),
              tabButton("Skincare", 1),
              tabButton("Accessories", 2),
            ],
          ),
        ),
        Expanded(
          child: SizedBox(
            height: double.infinity,
            child: GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                childAspectRatio: 0.8,
              ),
              itemBuilder: (context, index) {
                final filteredList = getFilteredList();
                return ProductCardWidget(
                    isReadyToPurchase: true, product: filteredList[index]);
              },
              itemCount: getFilteredList().length,
            ),
          ),
        ),
      ],
    );
  }

  Widget tabButton(String label, int index) {
    bool isSelected = _selectedIndex == index;

    return GestureDetector(
      onTap: () {
        setState(() {
          _selectedIndex = index;
        });
      },
      child: Container(
        width: 100.w,
        height: 42.h,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          gradient: isSelected
              ? const LinearGradient(
                  colors: [Color(0xffA64D79), Color(0xffE195AB)],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                )
              : null,
          color: isSelected ? null : const Color(0xffEFEFFB),
          borderRadius: BorderRadius.circular(15.r),
        ),
        child: Text(
          label,
          style: TextStyle(
            color:
                isSelected ? const Color(0xffFFFFFF) : const Color(0xff57597E),
            fontSize: 16.sp,
            fontWeight: FontWeight.bold,
          ),
        ).tr(),
      ),
    );
  }
}
