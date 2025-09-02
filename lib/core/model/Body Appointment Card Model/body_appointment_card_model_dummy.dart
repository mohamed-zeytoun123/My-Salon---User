import 'package:my_salon/core/model/Body%20Appointment%20Card%20Model/booking_date_time_model.dart';
import 'package:my_salon/core/model/Body%20Appointment%20Card%20Model/provider_info_model.dart';
import 'package:my_salon/core/model/Body%20Appointment%20Card%20Model/service_info_model_dummy.dart';

class BodyAppointmentCardModelDUMMY {
  final ServiceInfoModelDUMMY serviceInfo;
  final ProviderInfoModel providerInfoModel;
  final String location;
  final BookingDateTime bookingDateTime;

  BodyAppointmentCardModelDUMMY({
    required this.serviceInfo,
    required this.providerInfoModel,
    required this.location,
    required this.bookingDateTime,
  });
}
