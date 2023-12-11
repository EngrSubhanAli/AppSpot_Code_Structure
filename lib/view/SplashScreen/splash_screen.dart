import 'package:flutter/material.dart';
import 'package:mvvm/utils/routes/routes_name.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.pushNamedAndRemoveUntil(
          context, RoutesName.signUp, (route) => false);
    });
    //Getx Navigation call like that
    // Future.delayed(const Duration(seconds: 3), () {
    //  Get.offNamed(RoutesName.signUpGetx);}
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        body: Center(
      child: Text('Splash Screen'),
    ));
  }
}
