// ignore_for_file: depend_on_referenced_packages

import 'package:mvvm/view_models/admin_side_view_models/home_view_model.dart';
import 'package:mvvm/view_models/user_side_view_models/home_view_model.dart';
import 'package:nested/nested.dart';
import 'package:provider/provider.dart';

//
/// MultiProvider is a provider that merges multiple providers into one.
///
List<SingleChildWidget> providers = [
  // view models for admin side
  ChangeNotifierProvider(create: (_) => AdminHomeViewModel()),
  ChangeNotifierProvider(create: (_) => AdminHomeViewModel()),

  // view models for User side
  ChangeNotifierProvider(create: (_) => UserHomeViewModel()),
  ChangeNotifierProvider(create: (_) => UserHomeViewModel()),
];
