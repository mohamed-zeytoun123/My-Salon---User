import 'package:my_salon/core/style/app_text_styles.dart';
import 'package:my_salon/featchers/Home/presentation/widgets/Bottom%20Sheet%20Location%20Widgets/select_location_bottom_sheet_widget.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomBottomSheet extends StatefulWidget {
  const CustomBottomSheet({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _CustomBottomSheetState createState() => _CustomBottomSheetState();
}

class _CustomBottomSheetState extends State<CustomBottomSheet> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 611.h,
      width: double.infinity,
      padding: EdgeInsets.all(16.r),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.vertical(top: Radius.circular(20.r)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 20.w, right: 20.w, top: 20.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Saved Location".tr(),
                  style: AppTextStyles.white32w400Meditative
                      .copyWith(color: Color(0xff000000)),
                ),
                Text(
                  "The location you entered".tr(),
                  style:
                      AppTextStyles.white13w400.copyWith(color: Color(0xff666666)),
                ),
              ],
            ),
          ),
          SelectableBottomSheetWidget()
        ],
      ),
    );
  }
}

//📌 **الصفحة الأولى** (تحتوي على الأيقونة التي تغير الصفحة)
//   Widget _buildFirstPage() {
//     return Column(
//       mainAxisAlignment: MainAxisAlignment.center,
//       children: [
//         Icon(
//           Icons.add_ic_call_outlined,
//           size: 50,
//           color: Colors.blue,
//         ),
//         SizedBox(height: 20),
//         ElevatedButton(
//           onPressed: () {
//             setState(() {
//               isFirstPage = false; // التبديل إلى الصفحة الثانية
//             });
//           },
//           child: Text("انتقل إلى الصفحة الثانية"),
//         ),
//       ],
//     );
//   }
//  📌 **الصفحة الثانية** (محتوى مختلف)
//   Widget _buildSecondPage() {
//     return Column(
//       mainAxisAlignment: MainAxisAlignment.center,
//       children: [
//         Icon(
//           Icons.check_circle_outline,
//           size: 50,
//           color: Colors.green,
//         ),
//         SizedBox(height: 20),
//         ElevatedButton(
//           onPressed: () {
//             setState(() {
//               isFirstPage = true; // العودة إلى الصفحة الأولى
//             });
//           },
//           child: Text("الرجوع إلى الصفحة الأولى"),
//         ),
//       ],
//     );
//   }
// }
