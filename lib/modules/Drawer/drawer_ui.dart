import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:pps/modules/constant/const.dart';
import 'package:pps/modules/constant/style.dart';
import 'package:pps/routes/app_pages.dart';
import 'package:pps/routes/app_routes.dart';
import 'package:pps/shared/constants/colors.dart';

class DrawerUi extends StatefulWidget {


  @override
  _DrawerUiState createState() => _DrawerUiState();
}

class _DrawerUiState extends State<DrawerUi> {
  var Administrator = [
    drawerItemWidget(title: 'Users', icon: 'assets/images/administrator_1.png',route: Routes.AdministratorUser),
    drawerItemWidget(title: 'Employee List', icon: 'assets/images/administrator_2.png'),
    drawerItemWidget(title: 'Role Permission', icon: 'assets/images/administrator_3.png'),
    drawerItemWidget(title: 'Supplier List', icon: 'assets/images/administrator_4.png'),
    drawerItemWidget(title: 'Client List', icon: 'assets/images/administrator_5.png'),
    drawerItemWidget(title: 'Bank List', icon: 'assets/images/administrator_6.png'),
    drawerItemWidget(title: 'Subcontractor List', icon: 'assets/images/administrator_7.png'),
    drawerItemWidget(title: 'Department List', icon: 'assets/images/administrator_8.png'),
    drawerItemWidget(title: 'Activity List', icon: 'assets/images/administrator_9.png'),
  ];

  var Inventory = [
    drawerItemWidget(
        title: 'Category List', icon: 'assets/images/administrator_4.png'),
    drawerItemWidget(
        title: 'Brand List', icon: 'assets/images/administrator_4.png'),
    drawerItemWidget(
        title: 'Unit List', icon: 'assets/images/administrator_4.png'),
    drawerItemWidget(
        title: 'Product List', icon: 'assets/images/administrator_4.png'),
    drawerItemWidget(
        title: 'Warehouse List', icon: 'assets/images/administrator_4.png'),
    drawerItemWidget(
        title: 'Warehouse Inventory List',
        icon: 'assets/images/administrator_4.png'),
    drawerItemWidget(
        title: 'Stock List', icon: 'assets/images/administrator_4.png'),
    drawerItemWidget(
        title: 'Transfer List', icon: 'assets/images/administrator_4.png'),
    drawerItemWidget(
        title: 'Delivery List', icon: 'assets/images/administrator_4.png'),
    drawerItemWidget(
        title: 'Qutation Price List',
        icon: 'assets/images/administrator_4.png'),
  ];
  var Purchase = [
    drawerItemWidget(
        title: 'Purchase List', icon: 'assets/images/Purchase_1.png'),
    drawerItemWidget(
        title: 'Purchase Create', icon: 'assets/images/administrator_4.png'),
    drawerItemWidget(
        title: 'Purchase Requisitions List',
        icon: 'assets/images/administrator_4.png'),
    drawerItemWidget(
        title: 'Purchase Order List',
        icon: 'assets/images/administrator_4.png'),
  ];

  var Project = [
    drawerItemWidget(
        title: 'Assigned Project List', icon: 'assets/images/project_1.png'),
    drawerItemWidget(
        title: 'Project Type Estimate', icon: 'assets/images/project_2.png'),
    drawerItemWidget(
        title: 'Project Requisition', icon: 'assets/images/project_3.png'),
    drawerItemWidget(
        title: 'Project Dirasa', icon: 'assets/images/project_4.png'),
    drawerItemWidget(
        title: 'Project List', icon: 'assets/images/project_5.png'),
    drawerItemWidget(
        title: 'Work Order List', icon: 'assets/images/project_6.png'),
  ];

  var projectStatus = [
    drawerItemWidget(
        title: 'Project Status', icon: 'assets/images/project_status_1.png'),
    drawerItemWidget(
        title: 'Client Price List',
        icon: 'assets/images/administrator_4.png'),
    drawerItemWidget(
        title: 'Subcontractor Price List',
        icon: 'assets/images/administrator_4.png'),
  ];

  var accounts = [
    drawerItemWidget(
        title: 'Client Bill List', icon: 'assets/images/accounts_1.png'),
    drawerItemWidget(
        title: 'Subcontractor Bill List',
        icon: 'assets/images/accounts_1.png'),
    drawerItemWidget(
        title: 'Chartered Account List',
        icon: 'assets/images/accounts_3.png'),
    drawerItemWidget(
        title: 'Group List', icon: 'assets/images/accounts_4.png'),
    drawerItemWidget(
        title: 'Ledger List', icon: 'assets/images/accounts_5.png'),
    drawerItemWidget(
        title: 'Journal List', icon: 'assets/images/accounts_6.png'),
    drawerItemWidget(title: 'Reports', icon: 'assets/images/accounts_7.png'),
  ];

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: Theme.of(context).copyWith(canvasColor: ColorConstants.sectionPrimaryColor,),
      child: Drawer(
        child:  ListView(
          children: [
            SizedBox(
              height: sectionSpacing,
            ),
            drawerItemWidget(
              icon: 'assets/images/drawer_1.png',
              title: 'Dashboard',
              route: Routes.Dashboard,
            ),
            drawerItemWidget(
              icon: 'assets/images/drawer_2.png',
              title: 'UserProfile',
            ),
            drawerheaderWidget(
                icon: 'assets/images/drawer_3.png',
                title: 'Administrator',
                listName: Administrator),
            drawerheaderWidget(
                icon: 'assets/images/drawer_4.png',
                title: 'Inventory',
                listName: Inventory),
            drawerheaderWidget(
                icon: 'assets/images/drawer_5.png',
                title: 'Purchase',
                listName: Purchase),
            drawerheaderWidget(
                icon: 'assets/images/drawer_6.png',
                title: 'Projects',
                listName: Project),
            drawerheaderWidget(
              icon: 'assets/images/drawer_7.png',
              title: 'Project Status',
              listName: projectStatus,
            ),
            drawerheaderWidget(
              icon: 'assets/images/drawer_8.png',
              title: 'Accounts',
              listName: accounts,
            ),
            drawerItemWidget(
              icon: 'assets/images/drawer_9.png',
              title: 'Settings',
            ),
          ],
        ),

      ),
    );
  }
}





Widget drawerItemWidget({required String icon, required String title, var route}) {
  return ListTile(
    leading: Tab(
      icon: Container(
        height: 12,
        width: 12,
        child: Image(
          image: AssetImage(icon.toString()),
        ),
      ),
    ),
    title: Text(
      title,
      style: sectionSubTitle().copyWith(color: Color(0xFFC1DAFF)),
      maxLines: 2,
    ),
    onTap: () {
      if (route != null) Get.toNamed(route);
    },
  );
}

Widget drawerheaderWidget({required String icon, required String title, required List listName}) {
  return ExpansionTile(
    leading: Tab(
      icon: Container(
        height: 12,
        width: 12,
        child: Image(
          image: AssetImage(icon.toString()),
        ),
      ),
    ),
    title: Text(
      title,
      style: sectionSubTitle().copyWith(color: Color(0xFFC1DAFF)),
    ),
    children: [
      ListView.builder(
          itemCount: listName.length,
          shrinkWrap: true,
          itemBuilder: (Context, index) {
            return Padding(
                padding: EdgeInsets.symmetric(horizontal: sectionSpacing),
                child: listName[index]);
          })
    ],
  );
}



