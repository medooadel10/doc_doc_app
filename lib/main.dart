import 'package:doc_doc_app/core/networking/dio_factory.dart';
import 'package:doc_doc_app/core/router/app_route.dart';
import 'package:doc_doc_app/core/router/routes.dart';
import 'package:doc_doc_app/core/style/app_themes.dart';
import 'package:flutter/material.dart';

void main() {
  DioFactory.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: AppThemes.lightTheme,
      debugShowCheckedModeBanner: false,
      onGenerateRoute: AppRoute().onGenerateRoute,
      initialRoute: Routes.splash,
    );
  }
}
