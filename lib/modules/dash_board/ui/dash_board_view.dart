import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:get/get.dart';
import 'package:pps/modules/Drawer/drawer_ui.dart';
import 'package:pps/modules/base_widget.dart';
import 'package:pps/modules/constant/const.dart';
import 'package:pps/modules/constant/style.dart';
import 'package:pps/modules/dash_board/provider/dash_board_provider.dart';
import 'package:pps/modules/sizing_information.dart';
import 'package:pps/routes/app_routes.dart';
import 'package:pps/shared/constants/colors.dart';
import 'package:pps/shared/constants/storage.dart';
import 'package:pps/shared/storage_prefs.dart';
import '../controller/dash_board_logic.dart';
import 'package:percent_indicator/percent_indicator.dart';

class DashBoardPage extends GetView<DashBoardLogic> {
  static const List<MenuItem> itemsFirst = [
    itemLogout,
  ];

  static const itemLogout = MenuItem(
    text: 'Log Out',
    icon: FeatherIcons.logOut,
  );

  @override
  Widget build(BuildContext context) {
    Get.put<DashBoardLogic>(DashBoardLogic());
    return BaseWidget(
      builder: (context, sizingInformation) {
        return Obx(
          () {
            return SafeArea(
              child: Scaffold
                (
                appBar: AppBar(
                  elevation: 0,
                  backgroundColor: ColorConstants.backgroundPrimaryColor,
                  actions: <Widget>[
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: rootContainerSpacing),
                      child: Align(
                        alignment: Alignment.center,
                        child: Row(
                          children: [
                            CircleAvatar(
                              backgroundColor: hexToColor("#C4C4C4"),
                              child: Image(
                                image: AssetImage("assets/images/user_login.png"),
                              ),
                            ),
                            SizedBox(width: 2,),
                            PopupMenuButton<MenuItem>(
                              color: ColorConstants.backgroundPrimaryColor,
                              itemBuilder: (context) => [
                                ...itemsFirst.map(buildItem).toList(),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                body: Container(
                  color: ColorConstants.backgroundPrimaryColor,
                  height: sizingInformation.localWidgetSize!.height,
                  width: sizingInformation.localWidgetSize!.width,
                  child: ListView(
                    scrollDirection: Axis.vertical,
                    shrinkWrap: true,
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: rootContainerSpacing,
                            vertical: rootContainerSpacing),
                        child: Container(
                          height: 500,
                          child: GridView.count(
                            crossAxisCount: 3,
                            crossAxisSpacing: 10.0,
                            mainAxisSpacing: 15.0,
                            children: List.generate(
                              15,
                              (index) {
                                return Container(
                                  decoration: BoxDecoration(
                                    color: ColorConstants.sectionPrimaryColor,
                                  ),
                                  child: ListView(
                                    children: [
                                      SizedBox(
                                        height: sectionSpacing,
                                      ),
                                      Tab(
                                        icon: Container(
                                          height: 15,
                                          width: 15,
                                          child: Image(
                                            image: AssetImage(controller
                                                .sectionImage[index]
                                                .toString()),
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        height: sectionSpacing,
                                      ),
                                      Center(
                                        child: Text(
                                          controller
                                              .sectionTotalCount(index)
                                              .toString(),
                                          style: sectionSubTitle().copyWith(
                                              color: Colors.white,
                                              fontSize: AdaptiveTextSize()
                                                  .getadaptiveTextSize(
                                                      Get.context,
                                                      10,
                                                      Get.height)),
                                          textAlign: TextAlign.center,
                                        ),
                                      ),
                                      SizedBox(
                                        height: 3,
                                      ),
                                      Text(
                                        controller.sectionName[index],
                                        style: sectionSubTitle().copyWith(
                                            color: Colors.white,
                                            fontWeight: FontWeight.w700,
                                            fontSize: AdaptiveTextSize()
                                                .getadaptiveTextSize(
                                                    Get.context,
                                                    10,
                                                    Get.height)),
                                        maxLines: 2,
                                        textAlign: TextAlign.center,
                                      )
                                    ],
                                  ),
                                );
                              },
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: sectionSpacing,
                      ),
                      Icon(
                        FeatherIcons.arrowDown,
                        color: Colors.white,
                      ),
                      SizedBox(
                        height: sectionSpacing,
                      ),
                      Center(
                        child: Text(
                          'Total 160 Projects Running in 3 Zones',
                          style: sectionSubTitle().copyWith(
                            color: Colors.white,
                            fontSize: AdaptiveTextSize().getadaptiveTextSize(
                                Get.context, 16, Get.height),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: sectionSpacing,
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: rootContainerSpacing),
                        child: Container(
                          height: 142,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: ColorConstants.sectionPrimaryColor,
                          ),
                          child: Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: rootContainerSpacing),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                CircularPercentIndicator(
                                  radius: 100.0,
                                  lineWidth: 15.0,
                                  percent: 0.8,
                                  center: Container(
                                    child: Text(
                                      '30%',
                                      style: sectionSubTitle()
                                          .copyWith(color: Colors.white),
                                    ),
                                  ),
                                  backgroundColor: Colors.white,
                                  progressColor: Colors.green,
                                ),
                                CircularPercentIndicator(
                                  radius: 100.0,
                                  lineWidth: 15.0,
                                  percent: 0.8,
                                  center: Container(
                                    child: Text(
                                      '30%',
                                      style: sectionSubTitle()
                                          .copyWith(color: Colors.white),
                                    ),
                                  ),
                                  backgroundColor: Colors.white,
                                  progressColor: Colors.green,
                                ),
                                CircularPercentIndicator(
                                  radius: 100.0,
                                  lineWidth: 15.0,
                                  percent: 0.8,
                                  center: Container(
                                    child: Text(
                                      '30%',
                                      style: sectionSubTitle()
                                          .copyWith(color: Colors.white),
                                    ),
                                  ),
                                  backgroundColor: Colors.white,
                                  progressColor: Colors.green,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: rootContainerSpacing,
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: rootContainerSpacing),
                        child: Container(
                          height: 50,
                          color: ColorConstants.sectionSecondaryColor,
                          child: Column(
                            children: [
                              Text(
                                'Green Zone Projects',
                                style: sectionSubTitle().copyWith(
                                    color: Colors.white,
                                    fontSize: AdaptiveTextSize()
                                        .getadaptiveTextSize(
                                            Get.context, 14, Get.height)),
                              ),
                              Text(
                                'Total Projects- 05',
                                style: sectionSubTitle().copyWith(
                                  color: Colors.white,
                                  fontSize: AdaptiveTextSize()
                                      .getadaptiveTextSize(
                                          Get.context, 12, Get.height),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: sectionSpacing / 2,
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: rootContainerSpacing),
                        child: Container(
                          height: 183,
                          decoration: const BoxDecoration(
                            borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(4),
                              bottomRight: Radius.circular(4),
                            ),
                          ),
                          child: Table(
                            border: TableBorder(
                              horizontalInside: BorderSide(
                                  width: 2,
                                  color: ColorConstants.sectionSecondaryColor),
                            ),
                            children: [
                              TableRow(
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(bottom: 8.0),
                                    child: Text(
                                      'Project Name',
                                      style: sectionSubTitle().copyWith(
                                          color: Colors.white,
                                          fontSize: AdaptiveTextSize()
                                              .getadaptiveTextSize(
                                                  Get.context, 10, Get.height)),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(bottom: 8.0),
                                    child: Text(
                                      'Site Code',
                                      style: sectionSubTitle().copyWith(
                                          color: Colors.white,
                                          fontSize: AdaptiveTextSize()
                                              .getadaptiveTextSize(
                                                  Get.context, 10, Get.height)),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(bottom: 8.0),
                                    child: Text(
                                      'Address',
                                      style: sectionSubTitle().copyWith(
                                          color: Colors.white,
                                          fontSize: AdaptiveTextSize()
                                              .getadaptiveTextSize(
                                                  Get.context, 10, Get.height)),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(bottom: 8.0),
                                    child: Text(
                                      'Work Done',
                                      style: sectionSubTitle().copyWith(
                                          color: Colors.white,
                                          fontSize: AdaptiveTextSize()
                                              .getadaptiveTextSize(
                                                  Get.context, 10, Get.height)),
                                    ),
                                  ),
                                  Padding(
                                    padding:
                                        EdgeInsets.symmetric(vertical: 8.0),
                                    child: LinearPercentIndicator(
                                      lineHeight: 14.0,
                                      percent: 0.5,
                                      center: Text(
                                        "50.0%",
                                        style: new TextStyle(fontSize: 12.0),
                                      ),
                                      linearStrokeCap: LinearStrokeCap.roundAll,
                                      backgroundColor: Colors.grey,
                                      progressColor: Colors.blue,
                                    ),
                                  ),
                                ],
                              ),
                              TableRow(
                                children: [
                                  Padding(
                                    padding:
                                        EdgeInsets.symmetric(vertical: 8.0),
                                    child: Text(
                                      'Lorem ipsum dolor sit adipiscing elit',
                                      style: sectionSubTitle().copyWith(
                                        color: Colors.white,
                                        fontSize: AdaptiveTextSize()
                                            .getadaptiveTextSize(
                                                Get.context, 10, Get.height),
                                      ),
                                      maxLines: 2,
                                    ),
                                  ),
                                  Padding(
                                    padding:
                                        EdgeInsets.symmetric(vertical: 8.0),
                                    child: Text(
                                      'Site Code',
                                      style: sectionSubTitle().copyWith(
                                          color: Colors.white,
                                          fontSize: AdaptiveTextSize()
                                              .getadaptiveTextSize(
                                                  Get.context, 10, Get.height)),
                                    ),
                                  ),
                                  Padding(
                                    padding:
                                        EdgeInsets.symmetric(vertical: 8.0),
                                    child: Text(
                                      'Address',
                                      style: sectionSubTitle().copyWith(
                                          color: Colors.white,
                                          fontSize: AdaptiveTextSize()
                                              .getadaptiveTextSize(
                                                  Get.context, 10, Get.height)),
                                    ),
                                  ),
                                  Padding(
                                    padding:
                                        EdgeInsets.symmetric(vertical: 8.0),
                                    child: Text(
                                      'Work Done',
                                      style: sectionSubTitle().copyWith(
                                          color: Colors.white,
                                          fontSize: AdaptiveTextSize()
                                              .getadaptiveTextSize(
                                                  Get.context, 10, Get.height)),
                                    ),
                                  ),
                                  Padding(
                                    padding:
                                        EdgeInsets.symmetric(vertical: 8.0),
                                    child: LinearPercentIndicator(
                                      lineHeight: 14.0,
                                      percent: 0.5,
                                      center: Text(
                                        "50.0%",
                                        style: new TextStyle(fontSize: 12.0),
                                      ),
                                      linearStrokeCap: LinearStrokeCap.roundAll,
                                      backgroundColor: Colors.grey,
                                      progressColor: Colors.blue,
                                    ),
                                  ),
                                ],
                              ),
                              TableRow(
                                children: [
                                  Padding(
                                    padding:
                                        EdgeInsets.symmetric(vertical: 8.0),
                                    child: Text(
                                      'Lorem ipsum dolor sit adipiscing elit.',
                                      style: sectionSubTitle().copyWith(
                                        color: Colors.white,
                                        fontSize: AdaptiveTextSize()
                                            .getadaptiveTextSize(
                                                Get.context, 10, Get.height),
                                      ),
                                      maxLines: 2,
                                    ),
                                  ),
                                  Padding(
                                    padding:
                                        EdgeInsets.symmetric(vertical: 8.0),
                                    child: Text(
                                      '12345',
                                      style: sectionSubTitle().copyWith(
                                          color: Colors.white,
                                          fontSize: AdaptiveTextSize()
                                              .getadaptiveTextSize(
                                                  Get.context, 10, Get.height)),
                                    ),
                                  ),
                                  Padding(
                                    padding:
                                        EdgeInsets.symmetric(vertical: 8.0),
                                    child: Text(
                                      'Lorem ipsum dolor sit adipiscing elit.',
                                      style: sectionSubTitle().copyWith(
                                          color: Colors.white,
                                          fontSize: AdaptiveTextSize()
                                              .getadaptiveTextSize(
                                                  Get.context, 10, Get.height)),
                                    ),
                                  ),
                                  Padding(
                                    padding:
                                        EdgeInsets.symmetric(vertical: 8.0),
                                    child: Text(
                                      'Work Done',
                                      style: sectionSubTitle().copyWith(
                                          color: Colors.white,
                                          fontSize: AdaptiveTextSize()
                                              .getadaptiveTextSize(
                                                  Get.context, 10, Get.height)),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 8.0),
                                    child: LinearPercentIndicator(
                                      lineHeight: 14.0,
                                      percent: 0.5,
                                      center: Text(
                                        "50.0%",
                                        style: new TextStyle(fontSize: 12.0),
                                      ),
                                      linearStrokeCap: LinearStrokeCap.roundAll,
                                      backgroundColor: Colors.grey,
                                      progressColor: Colors.blue,
                                    ),
                                  ),
                                ],
                              ),
                              TableRow(
                                children: [
                                  Padding(
                                    padding:
                                        EdgeInsets.symmetric(vertical: 8.0),
                                    child: Text(
                                      'Lorem ipsum dolor sit adipiscing elit.',
                                      style: sectionSubTitle().copyWith(
                                        color: Colors.white,
                                        fontSize: AdaptiveTextSize()
                                            .getadaptiveTextSize(
                                                Get.context, 10, Get.height),
                                      ),
                                      maxLines: 2,
                                    ),
                                  ),
                                  Padding(
                                    padding:
                                        EdgeInsets.symmetric(vertical: 8.0),
                                    child: Text(
                                      '12345',
                                      style: sectionSubTitle().copyWith(
                                          color: Colors.white,
                                          fontSize: AdaptiveTextSize()
                                              .getadaptiveTextSize(
                                                  Get.context, 10, Get.height)),
                                    ),
                                  ),
                                  Padding(
                                    padding:
                                        EdgeInsets.symmetric(vertical: 8.0),
                                    child: Text(
                                      'Lorem ipsum dolor sit adipiscing elit.',
                                      style: sectionSubTitle().copyWith(
                                          color: Colors.white,
                                          fontSize: AdaptiveTextSize()
                                              .getadaptiveTextSize(
                                                  Get.context, 10, Get.height)),
                                    ),
                                  ),
                                  Padding(
                                    padding:
                                        EdgeInsets.symmetric(vertical: 8.0),
                                    child: Text(
                                      'Work Done',
                                      style: sectionSubTitle().copyWith(
                                          color: Colors.white,
                                          fontSize: AdaptiveTextSize()
                                              .getadaptiveTextSize(
                                                  Get.context, 10, Get.height)),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 8.0),
                                    child: LinearPercentIndicator(
                                      lineHeight: 14.0,
                                      percent: 0.5,
                                      center: Text(
                                        "50.0%",
                                        style: new TextStyle(fontSize: 12.0),
                                      ),
                                      linearStrokeCap: LinearStrokeCap.roundAll,
                                      backgroundColor: Colors.grey,
                                      progressColor: Colors.blue,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 70,
                      ),
                      Center(
                        child: Text(
                          'Powered By : Bit-Byte Tech',
                          style:
                              sectionSubTitle().copyWith(color: Colors.white),
                          textAlign: TextAlign.center,
                        ),
                      )
                    ],
                  ),
                ),
                drawer: DrawerUi()
              ),
            );
          },
        );
      },
    );
  }
}

PopupMenuItem<MenuItem> buildItem(MenuItem item) => PopupMenuItem(
        child: GestureDetector(
      onTap: () async {
        await StoragePrefs.gs.remove(StorageConstants.token);
        if (!StoragePrefs.gs.hasData(StorageConstants.token))
          print("token removed from get storage");
        Get.offNamed(Routes.LOGIN);
      },
      child: Row(
        children: [
          Icon(
            item.icon,
            color: Colors.white,
            size: 15,
          ),
          const SizedBox(
            width: 12,
          ),
          Text(
            item.text,
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ],
      ),
    ));
