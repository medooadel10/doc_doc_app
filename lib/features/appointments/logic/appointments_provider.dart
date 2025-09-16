import 'package:doc_doc_app/core/local_storage/shared_prefereneces_helper.dart';
import 'package:doc_doc_app/core/networking/api_constants.dart';
import 'package:doc_doc_app/core/networking/dio_factory.dart';
import 'package:doc_doc_app/features/appointments/models/appointments_response_model.dart';
import 'package:flutter/material.dart';

class AppointmentsProvider extends ChangeNotifier {
  List<AppointmentModel> appointments = [];

  void getAppointments() async {
    try {
      final token = SharedPreferenecesHelper.getString('token');
      final response = await DioFactory.getData(
        ApiConstants.appointments,
        token: token,
      );
      final data = AppointmentsResponseModel.fromJson(response.data);
      if (data.status) {
        appointments = data.appointments;
        notifyListeners();
      }
    } catch (e) {
      print('Error fetching appointments: $e');
    }
  }
}
