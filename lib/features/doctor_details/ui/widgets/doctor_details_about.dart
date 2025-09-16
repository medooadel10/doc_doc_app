import 'package:doc_doc_app/core/style/app_colors.dart';
import 'package:doc_doc_app/features/home/models/doctors_response_model.dart';
import 'package:flutter/material.dart';

class DoctorDetailsAbout extends StatelessWidget {
  final DoctorModel doctor;
  const DoctorDetailsAbout({Key? key, required this.doctor}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'About me',
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
            color: AppColors.text100Color,
          ),
        ),
        Text(doctor.description, style: TextStyle(color: AppColors.bodyColor)),
        SizedBox(height: 16),
        Text(
          'Gender',
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
            color: AppColors.text100Color,
          ),
        ),
        Text(doctor.gender, style: TextStyle(color: AppColors.bodyColor)),
        SizedBox(height: 16),
        Text(
          'Email',
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
            color: AppColors.text100Color,
          ),
        ),
        Text(doctor.email, style: TextStyle(color: AppColors.bodyColor)),
        SizedBox(height: 16),
        Text(
          'Phone',
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
            color: AppColors.text100Color,
          ),
        ),
        Text(doctor.phone, style: TextStyle(color: AppColors.bodyColor)),
        SizedBox(height: 16),
        Text(
          'Working Time',
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
            color: AppColors.text100Color,
          ),
        ),
        Text(
          'Every Day From ${doctor.startTime} - ${doctor.endTime}',
          style: TextStyle(color: AppColors.bodyColor),
        ),
        SizedBox(height: 16),
        Text(
          'Appoint Price',
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
            color: AppColors.text100Color,
          ),
        ),
        Text(
          '${doctor.appointPrice} EGP',
          style: TextStyle(color: AppColors.bodyColor),
        ),
      ],
    );
  }
}
