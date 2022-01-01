import 'package:admin_panel/presentation/widgets/custom_text.dart';
import 'package:flutter/material.dart';

class DriversPage extends StatelessWidget {
  const DriversPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: CustomText(
        title: 'Drivers',
      ),
    );
  }
}
