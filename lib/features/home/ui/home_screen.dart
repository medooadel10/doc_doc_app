import 'package:doc_doc_app/features/home/ui/widgets/home_banner.dart';
import 'package:doc_doc_app/features/home/ui/widgets/home_header.dart';
import 'package:doc_doc_app/features/home/ui/widgets/home_specializations.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(vertical: 10, horizontal: 16),
          child: Column(
            spacing: 16,
            children: [
              HomeHeader(),
              SizedBox(height: 10),
              HomeBanner(),
              HomeSpecializations(),
            ],
          ),
        ),
      ),
    );
  }
}
