import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'dart:async';

class ImageSliderWidget extends StatefulWidget {
  final List<String> images;
  final double height;
  final double width;
  final Color activeDotColor;

  const ImageSliderWidget({
    super.key,
    required this.images,
    this.height = 300,
    this.width = 300,
    this.activeDotColor = Colors.blue,
  });

  @override
  ImageSliderWidgetState createState() => ImageSliderWidgetState();
}

class ImageSliderWidgetState extends State<ImageSliderWidget> {
  final PageController controller = PageController();

  late Timer _timer;

  int _currentPage = 0;

  @override
  void initState() {
    super.initState();
    _startAutoSlide();
  }

  void _startAutoSlide() {
    _timer = Timer.periodic(Duration(seconds: 3), (timer) {
      if (_currentPage < widget.images.length - 1) {
        _currentPage++;
      } else {
        _currentPage = 0;
      }

      controller.animateToPage(_currentPage,
          duration: Duration(milliseconds: 300), curve: Curves.easeInOut);
    });
  }

  @override
  void dispose() {
    _timer.cancel();
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      spacing: 10.h,
      children: [
        SizedBox(
          width: widget.width.w,
          height: widget.height.h,
          child: PageView(
            controller: controller,
            onPageChanged: (int index) {
              setState(() {
                _currentPage = index;
              });
            },
            children: widget.images
                .map((image) => Padding(
                      padding:  EdgeInsets.symmetric(horizontal: 8.w),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(15.r),
                        child: Image.network(
                          "https://picsum.photos/124/86?random=10",
                          fit: BoxFit.cover,
                        ),
                      ),
                    ))
                .toList(),
          ),
        ),
        SmoothPageIndicator(
          controller: controller,
          count: widget.images.length,
          effect: WormEffect(
            dotHeight: 10.h,
            dotWidth: 10.w,
            activeDotColor: widget.activeDotColor,
          ),
        ),
      ],
    );
  }
}
