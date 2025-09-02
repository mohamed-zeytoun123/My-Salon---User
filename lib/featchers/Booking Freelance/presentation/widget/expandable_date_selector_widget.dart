// ignore_for_file: deprecated_member_use

import 'package:my_salon/core/colors/app_colors.dart';
import 'package:my_salon/core/model/Booking_Date_Model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:easy_localization/easy_localization.dart';

class ExpandableDateSelectorWidget extends StatefulWidget {
  ExpandableDateSelectorWidget({
    super.key,
    required this.onQuantitySelected,
    required this.disabledDates,
    this.isEnabled = true,
  });

  final Function(BookingDate) onQuantitySelected;
  final List<DateTime> disabledDates;
  final bool isEnabled;

   BookingDate model = BookingDate(year: 0, month: 0, day: 0);

  @override
  State<ExpandableDateSelectorWidget> createState() =>
      _ExpandableDateSelectorWidgetState();
}

class _ExpandableDateSelectorWidgetState
    extends State<ExpandableDateSelectorWidget> {
  late DateTime selectedDate;
  bool _isCalendarVisible = false;

  @override
  void initState() {
    super.initState();
    final today = DateTime.now();
    selectedDate = today;

    widget.model = BookingDate(
      year: today.year,
      month: today.month,
      day: today.day,
    );

    WidgetsBinding.instance.addPostFrameCallback((_) {
      widget.onQuantitySelected(widget.model);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      color: AppColors.colorThird,
      elevation: 4,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.r),
        side: BorderSide(
          color: Colors.grey.withOpacity(0.3),
          width: 1.w,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Material(
            color: Colors.transparent,
            child: widget.isEnabled
                ? InkWell(
                    onTap: () {
                      setState(() {
                        _isCalendarVisible = !_isCalendarVisible;
                      });
                    },
                    splashColor: Colors.grey.withOpacity(0.3),
                    highlightColor: Colors.grey.withOpacity(0.1),
                    borderRadius: BorderRadius.circular(10.r),
                    child: _buildDateContainer(),
                  )
                : _buildDateContainer(),
          ),
          if (_isCalendarVisible && widget.isEnabled) ...[
            SizedBox(height: 10.h),
            TableCalendar(
              firstDay: DateTime(2020),
              lastDay: DateTime(2100),
              focusedDay: selectedDate,
              selectedDayPredicate: (day) {
                return day.year == selectedDate.year &&
                    day.month == selectedDate.month &&
                    day.day == selectedDate.day;
              },
              onDaySelected: (selectedDay, focusedDay) {
                setState(() {
                  selectedDate = selectedDay;
                  _isCalendarVisible = false;
                  widget.model = widget.model.copyWith(
                    year: selectedDay.year,
                    month: selectedDay.month,
                    day: selectedDay.day,
                  );
                });
                widget.onQuantitySelected(widget.model);
              },
              calendarBuilders: CalendarBuilders(
                disabledBuilder: (context, date, _) {
                  return Center(
                    child: Text(
                      'X'.tr(),
                      style: TextStyle(
                        color: Colors.red,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  );
                },
              ),
              enabledDayPredicate: (day) {
                return !widget.disabledDates.any((disabled) =>
                    disabled.year == day.year &&
                    disabled.month == day.month &&
                    disabled.day == day.day);
              },
              daysOfWeekStyle: DaysOfWeekStyle(
                weekdayStyle: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
                weekendStyle: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.red,
                ),
              ),
              headerStyle: HeaderStyle(
                formatButtonVisible: false,
                titleCentered: true,
                leftChevronIcon: Icon(Icons.arrow_back),
                rightChevronIcon: Icon(Icons.arrow_forward),
              ),
              availableGestures: AvailableGestures.all,
              locale: context.locale.toString(),
            ),
          ],
        ],
      ),
    );
  }

  Widget _buildDateContainer() {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 10.h, horizontal: 15.w),
      width: double.infinity,
      height: 55.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.r),
        border: Border.all(color: Color(0xffD9D9D9)),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "${selectedDate.day} - ${selectedDate.month} - ${selectedDate.year}".tr(),
            style: TextStyle(
              color: widget.isEnabled ? Color(0xff121212) : Colors.grey,
            ),
          ),
          Icon(
            Icons.date_range_outlined,
            size: 30.sp,
            color: widget.isEnabled ? Color(0xff000000) : Colors.grey,
          ),
        ],
      ),
    );
  }
}
