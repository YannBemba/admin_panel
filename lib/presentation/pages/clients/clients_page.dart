import 'package:admin_panel/presentation/widgets/custom_text.dart';
import 'package:flutter/material.dart';

class ClientPage extends StatelessWidget {
  const ClientPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: CustomText(
        title: 'Client',
      ),
    );
  }
}
