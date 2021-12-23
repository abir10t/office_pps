import 'package:extended_image/extended_image.dart';

import 'package:pps/shared/constants/storage.dart';
import 'package:pps/shared/constants/url.dart';
import 'package:pps/shared/storage_prefs.dart';

class UserPermision
{
  Client client = Client();

  Future<dynamic> PermisionProvider () async {
   final response = await client.get
     (
       Uri.parse("${UrlConstants.apiUrl.toString()}/users/2/permissions"),
       headers:
       {
         "Content-Type": "application/json",
         "Authorization": "Bearer" + await StoragePrefs.gs.read(StorageConstants.token.toString())
       }
     );
   return response;
  }
}