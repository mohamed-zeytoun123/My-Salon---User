import 'package:my_salon/core/Widgets/Form%20Button%20Widget/text_button_color_main_widget.dart';
import 'package:my_salon/core/Widgets/Form%20Button%20Widget/Text_button_white_widget.dart';
import 'package:my_salon/core/assets/app_image.dart';
import 'package:my_salon/core/colors/app_colors.dart';
import 'package:my_salon/core/style/app_text_styles.dart';
import 'package:my_salon/core/style/text_form_field_style.dart';
import 'package:my_salon/featchers/Home/presentation/widgets/Bottom%20Sheet%20Location%20Widgets/label_app_bar_bottom_sheet_widget.dart';
import 'package:my_salon/featchers/auth/presentation/page/select_location_page.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SelectableBottomSheetWidget extends StatefulWidget {
  const SelectableBottomSheetWidget({super.key});

  @override
  SelectableBottomSheetWidgetState createState() =>
      SelectableBottomSheetWidgetState();
}

class SelectableBottomSheetWidgetState
    extends State<SelectableBottomSheetWidget> {
  int? selectedIndex;
  bool isAddNew = false;
  final List<String> items = [
    "Country Name  City Name Area & Street Name - 23 .....",
    "Country Name  City Name Area & Street Name - 23 .....",
    "Country Name  City Name Area & Street Name - 23 .....",
  ];

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.vertical(top: Radius.circular(36.r)),
      child: SizedBox(
        height: 611.h,
        child: ColoredBox(
          color: Color(0xffFDFDFD),
          child: Padding(
            padding: EdgeInsets.only(top: 20.h, bottom: 40.h),
            child: Column(
              spacing: 16.h,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                LabelAppBarBottomSheetWidget(),
                isAddNew ? _buildAddNewPage() : _buildSavedLocationsPage(),
                Expanded(
                  child: Align(
                    alignment: Alignment.bottomCenter,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      spacing: 10.w,
                      children: [
                        TextButtonColorMainWidget(
                          hight: 56,
                          width: 174.5,
                          label: "Confirm",
                          onPressed: () {
                            setState(() {
                              isAddNew = false;
                            });
                            if (selectedIndex != null) {
                              Navigator.pop(context, items[selectedIndex!]);
                            }
                          },
                        ),
                        TextButtonWhiteWidget(
                            width: 174.5,
                            hight: 56,
                            label: "Add new",
                            onPressed: () {
                              setState(() {
                                isAddNew = true;
                              });
                            },
                            // ignore: use_full_hex_values_for_flutter_colors
                            borderColor: Color(0xff140C091A),
                            appTextStyles: AppTextStyles.whit16w700
                                .copyWith(color: Color(0xff1A1A1A))),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildSavedLocationsPage() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _buildItem(0, "Home"),
        Divider(
          color: Color(0xFFD9D9D9),
          thickness: 1,
        ),
        _buildItem(1, "Work"),
        Divider(
          color: Color(0xFFD9D9D9),
          thickness: 1,
        ),
        _buildItem(2, "Sister Home"),
      ],
    );
  }

  Widget _buildItem(int index, String label) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedIndex = index;
        });
      },
      child: Container(
        width: double.infinity,
        height: 69.h
        ,

        // margin: EdgeInsets.only(bottom: 10),
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        decoration: BoxDecoration(
          color: selectedIndex == index ? Color(0xffE3E3E3) : Color(0xffFDFDFD),
          border: Border.all(
            color: selectedIndex == index
                ? AppColors.colorSecondary
                : Color(0xffFDFDFD),
            width: selectedIndex == index ? 3 : 1,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(label,
                      style: AppTextStyles.white24w400Meditative
                          .copyWith(color: AppColors.colorSecondary)),
                  Text(
                    overflow: TextOverflow.ellipsis,
                    items[index],
                    style: AppTextStyles.white14w400
                        .copyWith(color: Color(0xff515151)),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildAddNewPage() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        spacing: 20.h,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            spacing: 15.w
            ,
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Country".tr(),
                      style: AppTextStyles.whit16w700
                          .copyWith(color: Color(0xff121212)),
                    ),
                    SizedBox(height: 8.h),
                    TextFormField(
                      decoration: TextFormFieldStyle.baseForm("Country"),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "City".tr(),
                      style: AppTextStyles.whit16w700
                          .copyWith(color: Color(0xff121212)),
                    ),
                    SizedBox(height: 8.h),
                    TextFormField(
                      decoration: TextFormFieldStyle.baseForm("City"),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            spacing: 10.h,
            children: [
              Text(
                "Area & Street".tr(),
                style:
                    AppTextStyles.whit16w700.copyWith(color: Color(0xff121212)),
              ),
              TextFormField(
                decoration: TextFormFieldStyle.baseForm("Area & Street"),
              ),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            spacing: 5.h
            ,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(15.r
                ),
                child: SizedBox(
                  width: double.infinity,
                  height: 81.h,
                  child: Image(
                    image: AssetImage(AppImage.map3),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              InkWell(
                child: Text(
                  "Select the location on the map".tr(),
                  style: AppTextStyles.white13w400.copyWith(
                      color: Color(0xff666666),
                      decoration: TextDecoration.underline,
                      decorationStyle: TextDecorationStyle.solid,
                      decorationColor: Color(0xff666666)),
                ),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => SelectLocationPage()));
                },
              )
            ],
          ),
        ],
      ),
    );
  }
}
