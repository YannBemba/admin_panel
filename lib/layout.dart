import 'package:admin_panel/helpers/responsiveness.dart';
import 'package:admin_panel/presentation/widgets/small_screen.dart';
import 'package:admin_panel/presentation/widgets/widgets.dart';
import 'package:flutter/material.dart';

class SiteLayout extends StatelessWidget {

  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();
  SiteLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: topNavigationBar(context, scaffoldKey),
      drawer: const Drawer(),
      body: const ResponsiveWidget(
        largeScreen: LargeScreen(),
        smallScreen: SmallScreen(),
      )
    );
  }
}
