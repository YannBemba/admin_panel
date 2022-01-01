import 'package:admin_panel/helpers/local_navigator.dart';
import 'package:admin_panel/presentation/widgets/side_menu.dart';
import 'package:flutter/material.dart';

class LargeScreen extends StatelessWidget {
  const LargeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Expanded(child: SideMenu()),
        Expanded(
          flex: 5,
          child: localNavigator()
        ),
      ],
    );
  }
}
