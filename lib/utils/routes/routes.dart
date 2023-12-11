import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:get/get_navigation/src/routes/transitions_type.dart';
import 'package:mvvm/utils/routes/routes_name.dart';
import 'package:mvvm/view/SplashScreen/splash_screen.dart';
import 'package:mvvm/view/user_side_screens/auth/user_sign_in_screen/sign_in_screen.dart';
import 'package:mvvm/view/user_side_screens/auth/user_sign_up_screen/sign_up_screen.dart';
import 'package:mvvm/view/user_side_screens/user_home_screen/home_screen.dart';

class Routes {
  //Used For GetX Route
  static appRoutes() => [
        GetPage(
          name: RoutesName.splash,
          page: () => const SplashScreen(),
          transitionDuration: const Duration(milliseconds: 250),
          transition: Transition.leftToRightWithFade,
        ),
        GetPage(
          name: RoutesName.signUp,
          page: () => const UserSignUpScreen(),
          transitionDuration: const Duration(milliseconds: 250),
          transition: Transition.leftToRightWithFade,
        ),
        GetPage(
          name: RoutesName.signIn,
          page: () => const UserHomeScreen(),
          transitionDuration: const Duration(milliseconds: 250),
          transition: Transition.leftToRightWithFade,
        ),
        GetPage(
          name: RoutesName.home,
          page: () => const UserHomeScreen(),
          transitionDuration: const Duration(milliseconds: 250),
          transition: Transition.leftToRightWithFade,
        ),
      ];

  //Used For Material Page Route
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RoutesName.splash:
        return MaterialPageRoute(
            builder: (BuildContext context) => const SplashScreen());

      case RoutesName.home:
        return MaterialPageRoute(
            builder: (BuildContext context) => const UserHomeScreen());

      case RoutesName.signIn:
        return MaterialPageRoute(
            builder: (BuildContext context) => const UserSignInScreen());
      case RoutesName.signUp:
        return MaterialPageRoute(
            builder: (BuildContext context) => const UserSignUpScreen());

      default:
        return MaterialPageRoute(builder: (_) {
          return const Scaffold(
            body: Center(
              child: Text('No route defined'),
            ),
          );
        });
    }
  }
}
