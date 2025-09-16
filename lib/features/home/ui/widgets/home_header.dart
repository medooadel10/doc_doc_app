import 'package:doc_doc_app/core/router/routes.dart';
import 'package:doc_doc_app/core/style/app_colors.dart';
import 'package:flutter/material.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Hi, Omar!',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: AppColors.text100Color,
                ),
              ),
              Text(
                'How Are you Today?',
                style: TextStyle(fontSize: 12, color: AppColors.text80Color),
              ),
            ],
          ),
        ),
        GestureDetector(
          onTap: () {
            Navigator.pushNamed(context, Routes.profile);
          },
          child: CircleAvatar(
            backgroundColor: AppColors.text20Color,
            radius: 20,
            child: Icon(Icons.person, color: AppColors.text100Color),
          ),
        ),
      ],
    );
  }
}
