import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:mvvm/utils/routes/routes.dart';
import 'package:mvvm/utils/routes/routes_name.dart';
import 'package:provider/provider.dart';

import 'Core/localiztion/messages/messages.dart';
import 'Core/multiproviders_list/provider_list.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  // Design width and height
  static const double _designWidth = 375;
  static const double _designHeight = 849;

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(MyApp._designWidth, MyApp._designHeight),
        builder: (context, widget) {
          return MultiProvider(
            providers: providers,
            child: GetMaterialApp(
              debugShowCheckedModeBanner: false,
              translations: Messages(),
              fallbackLocale: const Locale('en', 'US'),
              textDirection: TextDirection.ltr,
              locale: const Locale('en', 'US'),
              theme: ThemeData(
                primarySwatch: Colors.blue,
              ),
              // getPages: Routes.appRoutes(), >>>>>>> use it if you want to use GetX<<<<<<<<<<<<
              initialRoute: RoutesName.splash,
              onGenerateRoute: Routes.generateRoute,
            ),
          );
        });
  }
}
