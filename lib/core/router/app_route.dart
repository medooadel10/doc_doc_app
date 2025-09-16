import 'package:doc_doc_app/core/router/routes.dart';
import 'package:doc_doc_app/features/doctor_details/logic/doctor_details_provider.dart';
import 'package:doc_doc_app/features/doctor_details/ui/doctor_details_screen.dart';
import 'package:doc_doc_app/features/doctors/ui/doctors_screen.dart';
import 'package:doc_doc_app/features/home/logic/home_provider.dart';
import 'package:doc_doc_app/features/home/models/doctors_response_model.dart';
import 'package:doc_doc_app/features/home/ui/home_screen.dart';
import 'package:doc_doc_app/features/login/logic/login_provider.dart';
import 'package:doc_doc_app/features/login/ui/login_screen.dart';
import 'package:doc_doc_app/features/on_boarding/ui/on_boarding_screen.dart';
import 'package:doc_doc_app/features/register/logic/register_provider.dart';
import 'package:doc_doc_app/features/register/ui/register_screen.dart';
import 'package:doc_doc_app/features/splash/ui/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class AppRoute {
  Route<dynamic>? onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.splash:
        return MaterialPageRoute(builder: (context) => SplashScreen());
      case Routes.onBoarding:
        return MaterialPageRoute(builder: (context) => OnBoardingScreen());
      case Routes.login:
        return MaterialPageRoute(
          builder: (context) => ChangeNotifierProvider(
            create: (context) => LoginProvider(),
            child: LoginScreen(),
          ),
        );
      case Routes.register:
        return MaterialPageRoute(
          builder: (context) => ChangeNotifierProvider(
            create: (context) => RegisterProvider(),
            child: RegisterScreen(),
          ),
        );
      case Routes.home:
        return MaterialPageRoute(
          builder: (context) => ChangeNotifierProvider(
            create: (context) => HomeProvider()
              ..getAllSpecializations()
              ..getAllDoctors(),
            child: HomeScreen(),
          ),
        );

      case Routes.doctors:
        var args = settings.arguments as List<DoctorModel>;
        return MaterialPageRoute(
          builder: (context) => DoctorsScreen(doctors: args),
        );
      case Routes.doctorDetails:
        var args = settings.arguments as DoctorModel;
        return MaterialPageRoute(
          builder: (context) => ChangeNotifierProvider(
            create: (context) => DoctorDetailsProvider(),
            child: DoctorDetailsScreen(doctor: args),
          ),
        );
      default:
        return MaterialPageRoute(builder: (context) => Container());
    }
  }
}
