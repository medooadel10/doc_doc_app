import 'dart:developer';

import 'package:doc_doc_app/core/local_storage/shared_prefereneces_helper.dart';
import 'package:doc_doc_app/core/networking/api_constants.dart';
import 'package:doc_doc_app/core/networking/dio_factory.dart';
import 'package:doc_doc_app/features/home/models/specializations_response_model.dart';
import 'package:flutter/material.dart';

class HomeProvider extends ChangeNotifier {
  List<SpecializationModel> specializations = [];

  void getAllSpecializations() async {
    final token = SharedPreferenecesHelper.getString('token')!;
    try {
      final response = await DioFactory.getData(
        ApiConstants.specializations,
        token: token,
      );
      final data = SpecializationsResponseModel.fromJson(response.data);
      if (data.status) {
        specializations = data.specializations;
        notifyListeners();
      }
    } catch (_) {}
  }
}
