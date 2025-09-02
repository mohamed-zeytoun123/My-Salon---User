import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Search extends SearchDelegate {
  @override
  List<Widget>? buildActions(BuildContext context) {
    return [];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(
        onPressed: () {
          close(context, null);
        },
        icon: const Icon(Icons.arrow_back));
  }

  @override
  Widget buildResults(BuildContext context) {
    return  Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "No Data".tr(),
            style: TextStyle(fontSize: 33.sp),
          ),
          Icon(
            Icons.sentiment_very_dissatisfied,
            size: 33.sp,
          )
        ],
      ),
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    return  Scaffold(
      backgroundColor: Color.fromARGB(105, 255, 82, 82),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "No Data".tr(),
              style: TextStyle(fontSize: 44.sp),
            ),
            Icon(
              Icons.emoji_people_outlined,
              size: 44.sp,
            )
          ],
        ),
      ),
    );
  }
}
