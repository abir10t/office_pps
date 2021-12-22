import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:get/get.dart';
import 'package:pps/modules/Drawer/drawer_ui.dart';

import 'package:pps/modules/base_widget.dart';
import 'package:pps/modules/constant/app_bar.dart';
import 'package:pps/modules/constant/const.dart';
import 'package:pps/modules/constant/style.dart';
import 'package:pps/modules/sizing_information.dart';
import 'package:pps/shared/constants/basic_const.dart';
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
            body: Obx(() {
              return ListView(
                scrollDirection: Axis.vertical,
                children: [
                  SizedBox(height: sectionSpacing * 2,),
                  DataTable(
                    columns: [
                      DataColumn(label: Text('User Id',style: TextStyle(color: Colors.white,fontSize: 8),),),
                      DataColumn(label: Text('Name',style: TextStyle(color: Colors.white,fontSize: 8),),),
                      DataColumn(label: Text('Email',style: TextStyle(color: Colors.white,fontSize: 8),),),
                      DataColumn(label: Text('Role',style: TextStyle(color: Colors.white,fontSize: 8),),),
                      DataColumn(label: Text('Image',style: TextStyle(color: Colors.white,fontSize: 8),),),
                      DataColumn(label: Text('Actions',style: TextStyle(color: Colors.white,fontSize: 8),),)
                    ],
                    rows: controller.oneRow.map((e) {
                       return DataRow(
                         cells: <DataCell>[
                           DataCell(Text('${e[0]}',maxLines: 2,)),
                           DataCell(Text('${e[1]}',maxLines: 2,)),
                           DataCell(Text('${e[2]}',maxLines: 2,)),
                           DataCell(Text('${e[3]}',maxLines: 2,)),
                           DataCell(Text('${e[4]}',maxLines: 2,)),
                           DataCell(Column(
                             children: [
                               Icon(
                                 FeatherIcons.bookOpen,
                               ),
                               SizedBox(height: 10,),
                               Icon(
                                 FeatherIcons.user,
                               ),
                               SizedBox(height: 10,),
                               Icon(
                                 FeatherIcons.lock,
                               ),

                             ],
                           ))
                         ]
                       );
                    }).toList()
                  )

                ],

              );
            }),
          ),
        );
      },
    );
  }

}


