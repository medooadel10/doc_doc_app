import 'package:doc_doc_app/core/style/app_colors.dart';
import 'package:doc_doc_app/features/home/models/doctors_response_model.dart';
import 'package:flutter/material.dart';

class DoctorDetailsLocation extends StatelessWidget {
  final DoctorModel doctor;
  const DoctorDetailsLocation({Key? key, required this.doctor})
    : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Address',
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
            color: AppColors.text100Color,
          ),
        ),
        Text(doctor.address, style: TextStyle(color: AppColors.bodyColor)),
        SizedBox(height: 16),
        Text(
          'City',
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
            color: AppColors.text100Color,
          ),
        ),
        Text(doctor.city.name, style: TextStyle(color: AppColors.bodyColor)),
        SizedBox(height: 16),
        Text(
          'Governorate',
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
            color: AppColors.text100Color,
          ),
        ),
        Text(
          doctor.city.governrate.name,
          style: TextStyle(color: AppColors.bodyColor),
        ),
      ],
    );
  }
}
