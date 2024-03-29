import 'package:admin_panel/constants/controllers.dart';
import 'package:admin_panel/constants/style.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'custom_text.dart';

class VerticalMenuItem extends StatelessWidget {

  final String? itemName;
  final void Function()? onTap;

  const VerticalMenuItem({
    Key? key,
    this.itemName,
    this.onTap
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return InkWell(
      onTap: onTap!,
      onHover: (value) {
        value
            ? menuController.onHover(itemName!)
            : menuController.onHover("Not hovering");
      },
      child: Obx(() => Container(
        color: menuController.isHovering(itemName!)
            ? lightGrey.withOpacity(.1)
            : Colors.transparent,
        child: Row(
          children: [
            Visibility(
              visible: menuController.isHovering(itemName!)
                  || menuController.isHovering(itemName!),
              child: Container(
                width: 3.0,
                height: 72.0,
                color: dark,
              ),
              maintainSize: true,
              maintainState: true,
              maintainAnimation: true,
            ),
            Expanded(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: menuController.returnIconFor(itemName!),
                  ),
                  if(!menuController.isActive(itemName!))
                    Flexible(child: CustomText(
                      title: itemName,
                      color: menuController.isHovering(itemName!) ? dark : lightGrey,
                    ),)
                  else
                    Flexible(
                      child: CustomText(
                        title: itemName!,
                        color: dark,
                        size: 18.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                ],
              ),
            )
          ],
        ),
      )),
    );
  }
}
