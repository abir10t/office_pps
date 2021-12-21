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
            body: Column(
              children: [
                SizedBox(height: sectionSpacing*2,),
                Table(
                  border: TableBorder(
                    horizontalInside: BorderSide(
                      width: 2,
                      color: ColorConstants.sectionSecondaryColor
                    )
                  ),
                  children: [
                    TableRow(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(bottom: 8),
                          child: Text('${controller.userData[0]["id"].toString()  'ggg'}',style: sectionSubTitle().copyWith(
                            color: ColorConstants.primaryHeading,
                            fontSize: 16
                          ),),
                        ),
                        Padding(
                          padding: EdgeInsets.only(bottom: 8),
                          child: Text('Name',style: sectionSubTitle().copyWith(
                            color: ColorConstants.primaryHeading,
                            fontSize: 16
                          ),),
                        ),
                        Padding(
                          padding: EdgeInsets.only(bottom: 8),
                          child: Text('Email',style: sectionSubTitle().copyWith(
                            color: ColorConstants.primaryHeading,
                            fontSize: 16
                          ),),
                        ),
                        Padding(
                          padding: EdgeInsets.only(bottom: 8),
                          child: Text('Role',style: sectionSubTitle().copyWith(
                            color: ColorConstants.primaryHeading,
                            fontSize: 16
                          ),),
                        ),
                        Padding(
                          padding: EdgeInsets.only(bottom: 8),
                          child: Text('Image',style: sectionSubTitle().copyWith(
                            color: ColorConstants.primaryHeading,
                            fontSize: 16
                          ),),
                        ),
                        Padding(
                          padding: EdgeInsets.only(bottom: 8),
                          child: Text('Actions',style: sectionSubTitle().copyWith(
                            color: ColorConstants.primaryHeading,
                            fontSize: 16
                          ),),
                        ),

                      ]
                    ),
                    TableRow(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(bottom: 8,top: 16,right: 8),
                          child: Text('BG24566',style: sectionSubTitle().copyWith(
                            color: ColorConstants.primaryHeading,
                            fontSize: 16,

                          ),maxLines: 2,),
                        ),
                        Padding(
                          padding: EdgeInsets.only(bottom: 8,top: 16),
                          child: Text('Name',style: sectionSubTitle().copyWith(
                            color: ColorConstants.primaryHeading,
                            fontSize: 16
                          ),),
                        ),
                        Padding(
                          padding: EdgeInsets.only(bottom: 8,top: 16),
                          child: Text('Email',style: sectionSubTitle().copyWith(
                            color: ColorConstants.primaryHeading,
                            fontSize: 16
                          ),),
                        ),
                        Padding(
                          padding: EdgeInsets.only(bottom: 8,top: 16),
                          child: Text('Role',style: sectionSubTitle().copyWith(
                            color: ColorConstants.primaryHeading,
                            fontSize: 16
                          ),),
                        ),
                        Padding(
                          padding: EdgeInsets.only(bottom: 8,top: 16),
                          child: Text('Image',style: sectionSubTitle().copyWith(
                            color: ColorConstants.primaryHeading,
                            fontSize: 16
                          ),),
                        ),
                        Padding(
                          padding: EdgeInsets.only(bottom: 8,top: 16),
                          child: Text('Actions',style: sectionSubTitle().copyWith(
                            color: ColorConstants.primaryHeading,
                            fontSize: 16
                          ),),
                        ),

                      ]
                    ),
                    TableRow(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(bottom: tableBottomPadding,top: tableTopPadding,right: tableRightPadding),
                          child: Text('BG24566',style: sectionSubTitle().copyWith(
                            color: ColorConstants.primaryHeading,
                            fontSize: 16,

                          ),maxLines: 2,),
                        ),
                        Padding(
                          padding: EdgeInsets.only(bottom: 8,top: 16),
                          child: Text('Name',style: sectionSubTitle().copyWith(
                            color: ColorConstants.primaryHeading,
                            fontSize: 16
                          ),),
                        ),
                        Padding(
                          padding: EdgeInsets.only(bottom: 8,top: 16),
                          child: Text('Email',style: sectionSubTitle().copyWith(
                            color: ColorConstants.primaryHeading,
                            fontSize: 16
                          ),),
                        ),
                        Padding(
                          padding: EdgeInsets.only(bottom: 8,top: 16),
                          child: Text('Role',style: sectionSubTitle().copyWith(
                            color: ColorConstants.primaryHeading,
                            fontSize: 16
                          ),),
                        ),
                        Padding(
                          padding: EdgeInsets.only(bottom: 8,top: 16),
                          child: Text('Image',style: sectionSubTitle().copyWith(
                            color: ColorConstants.primaryHeading,
                            fontSize: 16
                          ),),
                        ),
                        Padding(
                          padding: EdgeInsets.only(bottom: 8,top: 16),
                          child: Text('Actions',style: sectionSubTitle().copyWith(
                            color: ColorConstants.primaryHeading,
                            fontSize: 16
                          ),),
                        ),

                      ]
                    ),

                  ],
                ),

              ],

            ),
          ),
        );
      },
    );
  }

}

Widget customTable ()
{
  return ListView.builder(
    itemCount: 5,
    itemBuilder: (context,index){
      return  Padding(
        padding: EdgeInsets.only(bottom: 8),
        child: Text('User Id',style: sectionSubTitle().copyWith(
            color: ColorConstants.primaryHeading,
            fontSize: 16
        ),),
      );
    },
  );
}
