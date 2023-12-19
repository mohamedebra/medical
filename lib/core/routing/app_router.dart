import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:medical/core/routing/routes.dart';
import 'package:medical/features/login/ui/login_screen.dart';
import 'package:medical/features/onboarding/onboarding_screen.dart';

class AppRouter{

   Route generateRoute(RouteSettings settings){
     final arguments = settings.arguments;
    switch(settings.name) {
      case Routes.onBoardingScreen:
        return MaterialPageRoute(
          builder: (_) => const OnBoardingScreen(),
        );
      case Routes.loginScreen:
        return MaterialPageRoute(
          builder: (_) => LoginScreen()
        );
      default: return MaterialPageRoute(
          builder: (_) => Scaffold(
            body:  Center(child:
            Text('No Route default for ${settings.name}'),),
          )
      );
    }

  }
}