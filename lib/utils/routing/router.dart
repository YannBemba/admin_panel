import 'package:admin_panel/presentation/pages/authentication/authentication_page.dart';
import 'package:admin_panel/presentation/pages/clients/clients_page.dart';
import 'package:admin_panel/presentation/pages/drivers/drivers_page.dart';
import 'package:admin_panel/presentation/pages/overview/overview_page.dart';
import 'package:admin_panel/utils/routing/routes.dart';
import 'package:flutter/material.dart';

Route<dynamic> generateRoute(RouteSettings settings) {

  switch(settings.name) {
    case OverViewPageRoute:
      return _getPageRoute(const OverViewPage());
    case DriversPageRoute:
      return _getPageRoute(const DriversPage());
    case ClientsPageRoute:
      return _getPageRoute(const ClientPage());
    default:
      return _getPageRoute(const OverViewPage());

  }
}

PageRoute _getPageRoute(Widget child) {
  return MaterialPageRoute(builder: (context) => child,);
}