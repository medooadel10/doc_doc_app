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
        CircleAvatar(
          backgroundColor: AppColors.text20Color,
          radius: 20,
          child: Stack(
            clipBehavior: Clip.none,
            children: [
              Icon(Icons.notifications_outlined, color: AppColors.text100Color),
              Positioned(
                right: 3,
                top: 1,
                child: CircleAvatar(
                  radius: 4,
                  backgroundColor: Theme.of(context).colorScheme.secondary,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
