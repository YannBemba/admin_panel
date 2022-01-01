import 'package:admin_panel/constants/controllers.dart';
import 'package:admin_panel/constants/style.dart';
import 'package:admin_panel/helpers/responsiveness.dart';
import 'package:admin_panel/presentation/widgets/widgets.dart';
import 'package:admin_panel/utils/routing/routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    double _width = MediaQuery.of(context).size.width;

    return Container(
      color: light,
      child: ListView(
        children: [
          if(ResponsiveWidget.isSmallScreen(context))
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const SizedBox(height: 40.0,),
                Row(
                  children: [
                    SizedBox(width: _width / 48.0,),
                    Padding(
                      padding: const EdgeInsets.only(right: 12.0),
                      child: Image.asset('assets/images/logo.png'),
                    ),
                    const Flexible(
                      child: CustomText(
                        title: "Admin Panel",
                        size: 20.0,
                        fontWeight: FontWeight.bold,
                        color: active,
                      ),
                    ),
                    SizedBox(width: _width / 48.0,),
                  ],
                ),
              ],
            ),
          const SizedBox(height: 40.0,),
          Divider(color: lightGrey.withOpacity(.1),),
          Column(
            mainAxisSize: MainAxisSize.min,
            children: sideMenuItems.map((itemName) => SideMenuItem(
              itemName: itemName == AuthenticationPageRoute ? "Log Out" : itemName,
              onTap: () {
                if(itemName == AuthenticationPageRoute) {
                  //TODO: go to authentication page
                }
                if(!menuController.isActive(itemName)) {
                  menuController.changeActiveItemTo(itemName);

                  if(ResponsiveWidget.isSmallScreen(context)) {
                    Get.back();
                    navigationController.navigateTo(itemName);
                  }
                }
              },
            )).toList(),
          ),
        ],
      ),
    );
  }
}
