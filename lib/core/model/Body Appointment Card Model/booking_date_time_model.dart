import 'package:my_salon/core/model/Body%20Appointment%20Card%20Model/enum_Time_Period_model.dart';
import 'package:my_salon/core/model/Booking_Date_Model.dart';

class BookingDateTime {
  final BookingDate date;
  final int hour;
  final int minute;
  final TimePeriod period;

  BookingDateTime({
    required this.date,
    required this.hour,
    required this.minute,
    required this.period,
  });

  BookingTime get time =>
      BookingTime(hour: hour, minute: minute, period: period);

  BookingDateTime copyWith({
    BookingDate? date,
    int? hour,
    int? minute,
    TimePeriod? period,
  }) {
    return BookingDateTime(
      date: date ?? this.date,
      hour: hour ?? this.hour,
      minute: minute ?? this.minute,
      period: period ?? this.period,
    );
  }
}

class BookingTime {
  final int hour;
  final int minute;
  final TimePeriod period;

  BookingTime({
    required this.hour,
    required this.minute,
    required this.period,
  });

  String get formattedMinutes {
    return minute.toString().padLeft(2, '0');
  }

  String get formattedTime {
    return '$hour:$formattedMinutes';
  }
}
