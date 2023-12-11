import 'package:flutter/material.dart';
import 'package:mvvm/utils/routes/routes_name.dart';

class UserSignUpScreen extends StatelessWidget {
  const UserSignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: GestureDetector(
          onTap: () {
            Navigator.pushNamed(context, RoutesName.signIn);
            //Getx Navigation
            //Get.toNamed(RoutesName.signInGetx);
          },
          child: const Text('User Sign Up Screen')),
    ));
  }
}
