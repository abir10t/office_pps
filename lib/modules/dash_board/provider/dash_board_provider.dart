import 'package:extended_image/extended_image.dart';
import 'package:flutter/material.dart';
import 'package:pps/shared/constants/storage.dart';
import 'package:pps/shared/constants/url.dart';
import 'package:pps/shared/storage_prefs.dart';

class dashboardApiProvider
{

  Client client = Client();

  Future<dynamic> dashBoardData() async
  {
     debugPrint('dashboardApiprovider tokennnnnnnnnn is ${ await StoragePrefs.gs.read(StorageConstants.token.toString())}');
     final response = await client.get
       (

       Uri.parse("${UrlConstants.apiUrl.toString()}/super-user/data"),
        headers:
        {
            "Content-Type": "application/json",
            "Authorization": "Bearer " + await StoragePrefs.gs.read(StorageConstants.token.toString())
         },

     );
     print('here response is ${response.statusCode}');

     return response;
  }




}