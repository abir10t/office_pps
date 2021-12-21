import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;
import 'package:http/http.dart';
import 'package:pps/shared/constants/storage.dart';
import 'package:pps/shared/constants/url.dart';
import 'package:pps/shared/storage_prefs.dart';

class AdministratorUserProvider
{
 Client client = Client();  
 
 Future<dynamic> administrator()async
 {

   debugPrint(".... AdministratorUserProvider token  is ${await StoragePrefs.gs.read(StorageConstants.token.toString())}  .....");
   final response = await client.get
     (

     Uri.parse("${UrlConstants.apiUrl.toString()}/users"),
       headers:
       {
       "Content-Type": "application/json",
       "Authorization": "Bearer " + await StoragePrefs.gs.read(StorageConstants.token.toString())
       },

   );

       print("..... AdministratorUserProvider status code is ${response.statusCode} .....");

      return response;

 }
}