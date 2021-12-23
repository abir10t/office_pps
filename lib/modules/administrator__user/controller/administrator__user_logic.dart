import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:http/http.dart';
import 'package:http/http.dart' as http;
import 'package:pps/modules/administrator__user/provider/administrator_user_provider.dart';
import 'package:pps/shared/widgets/loader/loader_class.dart';
import 'package:pps/shared/widgets/snackbar/snackbar.dart';
class Administrator_UserLogic extends GetxController
{

  var userData = [].obs;

  var oneRow = [].obs;

  AdministratorUserProvider userProvider = AdministratorUserProvider();

  @override
  void onInit()
  {
    user();
  }


  void onReady()
  {
    // TODO: implement onReady
    super.onReady();
  }

  @override
  void onClose()
  {
    // TODO: implement onClose
    super.onClose();
  }

  user()async
  {
    Loader.showLoading(dismissOnTap: false);

    try
    {
       http.Response response = await userProvider.administrator();
       var data  = jsonDecode(response.body);

       if( response.statusCode == 200 )
         {

           userData.value = data['data'];
           print("..... Administrator_user logic is ...... ${userData}");
           print("..............................................................................................");
           print("here user data length is ${userData.length}");
           for(int i=0; i<userData.length; i++)
             {
               oneRow.add([
                 userData[i]["id"].toString(),
                 userData[i]["name"].toString(),
                 userData[i]["email"].toString(),
                 userData[i]["roles"][0].toString(),
                 userData[i]["image"].toString()
               ]);
             }
              print(oneRow);
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
