
import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:http/http.dart';
import 'package:pps/shared/constants/storage.dart';
import 'package:pps/shared/constants/url.dart';
import 'package:pps/shared/storage_prefs.dart';

class AuthApiProvider
{
   Client client = Client();

   Future<dynamic>login({email, password})async
   {


     Map<dynamic,String> loginJsonData =
     {
       "email" : email,
       "password" : password,
     };

     final response = await client.post
       (
         Uri.parse("${UrlConstants.apiUrl.toString()}/auth/api-login"),body: jsonEncode(loginJsonData),
         headers: {"Content-Type" : "application/json"},

       );
     print("here respose is ${response.statusCode}");

     return response;

   }


}