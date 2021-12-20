import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:get/get.dart';
import 'package:pps/modules/Drawer/drawer_ui.dart';

import 'package:pps/modules/base_widget.dart';
import 'package:pps/modules/constant/app_bar.dart';
import 'package:pps/modules/constant/const.dart';
import 'package:pps/shared/constants/colors.dart';
import '../controller/administrator__user_logic.dart';

class Administrator_UserPage extends GetView<Administrator_UserLogic> {
  @override
  Widget build(BuildContext context) {
    final logic = Get.find<Administrator_UserLogic>();
    return BaseWidget(
      builder: (context, sizingInformation) {
        return SafeArea(
          child: Scaffold(
            appBar: DrawerAppbar(),
           drawer: DrawerUi(),
            backgroundColor: ColorConstants.backgroundPrimaryColor,
            body: Column(
              children: [
                SizedBox(
                  height: sectionSpacing*2,
                ),
                Container(
                  child: Table(
                    border: TableBorder.all(
                      color: hexToColor("#374D6D"),
                      style: BorderStyle.solid,
                      width: 2,

                    ),
                    children:
                    [
                      TableRow(
                        children: [
                          Text('hello'),
                          Text('hello'),
                          Text('hello'),
                        ]
                      )
                    ],
                  ),
                )
              ],

            ),
          ),
        );
      },
    );
  }
}
