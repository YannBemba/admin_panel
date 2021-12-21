import 'package:admin_panel/constants/style.dart';
import 'package:admin_panel/helpers/responsiveness.dart';
import 'package:flutter/material.dart';

import 'custom_text.dart';

AppBar topNavigationBar(BuildContext context, GlobalKey<ScaffoldState> key) =>
    AppBar(
      iconTheme: const IconThemeData(color: dark),
      backgroundColor: Colors.white,
      elevation: 0,
      leading: !ResponsiveWidget.isSmallScreen(context)
          ? Row(
        children: [
          Container(
            padding: const EdgeInsets.only(left: 14.0),
            child: Image.asset('assets/images/logo.png', height: 28.0,),
          )
        ],
      )
          : IconButton(icon: const Icon(Icons.menu), onPressed: () {
        key.currentState!.openDrawer();
      },),
      title: Row(
        children: [
          const Visibility(
            child: CustomText(
              title: "Admin Panel",
              color: lightGrey,
              size: 20.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          Expanded(
            child: Container(),
          ),
          IconButton(
            icon: Icon(Icons.settings, color: dark.withOpacity(.7),),
            onPressed: () {

            },
          ),
          Stack(
            children: [
              IconButton(
                icon: Icon(Icons.notifications, color: dark.withOpacity(.7),),
                onPressed: () {},
              ),
              Positioned(
                top: 7,
                right: 7,
                child: Container(
                  width: 12.0,
                  height: 12.0,
                  padding: const EdgeInsets.all(4.0),
                  decoration: BoxDecoration(
                    color: active,
                    borderRadius: BorderRadius.circular(30.0),
                    border: Border.all(color: light, width: 2.0),
                  ),
                ),
              ),
            ],
          ),
          Container(
            width: 1,
            height: 22,
            color: lightGrey,
          ),
          const SizedBox(height: 24.0,),
          const CustomText(title: "Yann BEMBA", color: lightGrey,),
          const SizedBox(height: 16.0,),
          Container(
            padding: const EdgeInsets.all(2.0),
            margin: const EdgeInsets.all(2.0),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(30.0),
            ),
            child: const CircleAvatar(
              backgroundColor: light,
              child: Icon(Icons.person_outline, color: dark,),
            ),
          ),
        ],
      ),
    );
