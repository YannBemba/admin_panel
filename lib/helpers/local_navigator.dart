import 'package:admin_panel/constants/controllers.dart';
import 'package:admin_panel/utils/routing/router.dart';
import 'package:admin_panel/utils/routing/routes.dart';
import 'package:flutter/material.dart';

Navigator localNavigator() => Navigator(
  key: navigationController.navigationKey,
  initialRoute: OverViewPageRoute,
  onGenerateRoute: generateRoute,
);