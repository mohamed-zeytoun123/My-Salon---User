import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DynamicGridWidget extends StatelessWidget {
  final List<dynamic> items;
  final double heightForm;
  final double widthForm;
  final double heightItem;
  final double widthItem;
  final int numItem;
  final Widget Function(BuildContext, dynamic) itemBuilder;

  const DynamicGridWidget({
    super.key,
    required this.items,
    this.heightForm = 180,
    this.widthForm = double.infinity,
    this.heightItem = 86,
    this.widthItem = 124,
    this.numItem = 3,
    required this.itemBuilder,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: widthForm == double.infinity ? double.infinity : widthForm.w,
      height: heightForm.h,
      child: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: numItem,
          childAspectRatio: widthItem / heightItem,
          mainAxisSpacing: 10.h,
          crossAxisSpacing: 7.w,
        ),
        itemCount: items.length,
        itemBuilder: (context, index) {
          final item = items[index];

          return GestureDetector(
            onTap: item.onTap,
            child: Container(
              width: widthItem.w,
              height: heightItem.h,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15.r),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(15.r),
                child: Stack(
                  alignment: Alignment.bottomCenter,
                  children: [
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Container(
                        width: widthItem.w,
                        height: 20.h,
                        decoration: const BoxDecoration(
                          gradient: LinearGradient(
                            begin: Alignment.bottomCenter,
                            end: Alignment.topCenter,
                            colors: [
                              Color.fromARGB(189, 204, 127, 211),
                              Color(0x2A0A18A1),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 10.h,
                      child: Text(
                        item.title,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 14.sp,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    itemBuilder(context, item),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
