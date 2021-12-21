import 'package:admin_panel/helpers/responsiveness.dart';
import 'package:admin_panel/presentation/widgets/small_screen.dart';
import 'package:admin_panel/presentation/widgets/widgets.dart';
import 'package:flutter/material.dart';

class SiteLayout extends StatelessWidget {
  const SiteLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: .0,
        backgroundColor: Colors.white,
      ),
      body: const ResponsiveWidget(
        largeScreen: LargeScreen(),
        smallScreen: SmallScreen(),
      )
    );
  }
}
