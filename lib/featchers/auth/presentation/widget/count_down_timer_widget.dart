import 'dart:async';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:my_salon/core/style/app_text_styles.dart';

class CountdownTimerWidget extends StatefulWidget {
  const CountdownTimerWidget({super.key});

  @override
  CountdownTimerWidgetState createState() => CountdownTimerWidgetState();
}

class CountdownTimerWidgetState extends State<CountdownTimerWidget> {
  int _seconds = 60;
  Timer? _timer;

  @override
  void initState() {
    super.initState();
    _startTimer();
  }

  void _startTimer() {
    _timer = Timer.periodic(Duration(seconds: 1), (timer) {
      if (_seconds > 0) {
        setState(() {
          _seconds--;
        });
      } else {
        timer.cancel();
        Navigator.pop(context);
      }
    });
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        '00 : $_seconds second'.tr(),
        style: AppTextStyles.white16w200.copyWith(
          color: Color(0xff000000),
          fontStyle: FontStyle.italic,
        ),
      ),
    );
  }
}
