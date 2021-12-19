import 'dart:convert';
import 'package:get/get.dart';
import 'package:pps/modules/dash_board/provider/dash_board_provider.dart';



class DashBoardLogic extends GetxController {

  List sectionName =
  [
    'Total Users',
    'Total Clients',
    'Suppliers',
    'Subcontractors',
    'Total Projects',
    'Total Running Projects',
    'Completed Projects',
    'Upcoming Projects',
    'Total Warehouse',
    'Total Products',
    'Total Purchase',
    'Total Sales',
    'Total Bill Submitted',
    'Total Bill Received',
    'Total Bill Pay'
  ];
  List sectionImage = [
    'assets/images/section_1.png',
    'assets/images/section_2.png',
    'assets/images/section_3.png',
    'assets/images/section_4.png',
    'assets/images/section_5.png',
    'assets/images/section_6.png',
    'assets/images/section_7.png',
    'assets/images/section_8.png',
    'assets/images/section_9.png',
    'assets/images/section_10.png',
    'assets/images/section_11.png',
    'assets/images/section_12.png',
    'assets/images/section_13.png',
    'assets/images/section_14.png',
    'assets/images/section_15.png',

  ];


  Map<dynamic,dynamic>superUser ={}.obs;



  @override
  void onReady()
  {
    // TODO: implement onReady
    super.onReady();
    fetchDashboard();
  }

  @override
  void onClose()
  {
    // TODO: implement onClose
    super.onClose();
  }

  dashboardApiProvider provider = dashboardApiProvider();



  Future<dynamic> fetchDashboard()async
  {
    var jsonData;
    var response = await provider.dashBoardData();
    if(response.statusCode == 200)
      {
        var jsonData = jsonDecode(response.body);
        print(jsonData.runtimeType);
        superUser["clients"] = jsonData["clients"];
        superUser["users"] = jsonData["users"];
        superUser["suppliers"] = jsonData["suppliers"];
        superUser["subcontractors"] = jsonData["subcontractors"];

        // superUser.forEach((key, value) {
        //  print('$key : $value\n');
        // });


      }

 return jsonData;

  }

  int sectionTotalCount (int index)
  {


    if(sectionName[index] == 'Total Clients') return superUser['clients'] ?? 0;
    if(sectionName[index] == 'Total Users')  return superUser['users'] ?? 0 ;
    if(sectionName[index] == 'Suppliers') return superUser['suppliers'] ?? 0;
    if(sectionName[index] == 'Subcontractors') return superUser['subcontractors'] ?? 0;

    else return 8;



  }





}
