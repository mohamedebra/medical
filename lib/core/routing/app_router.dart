import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:medical/core/DI/dependency_injection.dart';
import 'package:medical/core/routing/routes.dart';
import 'package:medical/features/login/logic/login_cubit.dart';
import 'package:medical/features/login/ui/login_screen.dart';
import 'package:medical/features/onboarding/onboarding_screen.dart';

import '../../features/home/ui/home_Screen.dart';

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
          builder: (_) => BlocProvider(
              create: (context) => getIt<LoginCubit>(),
              child: const LoginScreen())
        );
      case Routes.homeScreen:
        return MaterialPageRoute(
          builder: (_) => const HomeScreen(),
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