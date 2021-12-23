import 'dart:convert';
import 'dart:io';

import 'package:get/get.dart';
import 'package:http/http.dart';
import 'package:http/http.dart' as http;
import 'package:pps/modules/administrator_user_permision/provider/administrator_user_permision_provider.dart';
import 'package:pps/shared/widgets/loader/loader_class.dart';
import 'package:pps/shared/widgets/snackbar/snackbar.dart';

class Show_user_permisionLogic extends GetxController {
  UserPermision userPermision = UserPermision();
  var permisionData = [].obs;
  var oneRow = [].obs;
  


  @override
  void onReady()
  {
    // TODO: implement onReady
    super.onReady();
    permision();
  }

  @override
  void onClose()
  {
    // TODO: implement onClose
    super.onClose();
  }


  permision() async
  {
     Loader.showLoading(dismissOnTap: false);
    try
    {
       http.Response response = await userPermision.PermisionProvider();
       if( response.statusCode == 200 )
       {
         var data = jsonDecode(response.body);
         permisionData.value = data["data"]["user"];
         print(permisionData);
         for(int i=0; i<permisionData.length; i++)
         {
           oneRow.add([
             permisionData[i]["id"].toString(),
             permisionData[i]["name"].toString(),
           ]);
         }
         Loader.dismissLoading();
       }

    }

    on SocketException
    {
      Loader.dismissLoading();
      await SnackBarProvider.showSnackBar(title: "Failed", message: "No Internet Connection");

    }

    on Exception
    {
      Loader.dismissLoading();
      await SnackBarProvider.showSnackBar(title: "Failed", message: "Something wrong");
    }

  }
}
