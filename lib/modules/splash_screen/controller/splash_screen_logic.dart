import 'package:get/get.dart';
import 'package:pps/routes/app_routes.dart';
import 'package:pps/shared/constants/storage.dart';
import 'package:pps/shared/storage_prefs.dart';

class SplashScreenController extends GetxController {
  @override
  void onInit() async
  {
    super.onInit();


  }

  @override
  void onReady() async
  {
    super.onReady();
    getUser();

  }

   getUser() async {

     if (StoragePrefs.gs.hasData(StorageConstants.token.toString()))
      {
         Get.offAllNamed(Routes.Dashboard);
         print('here if token is ${StoragePrefs.gs.read(StorageConstants.token.toString())}');
      }

     else
       {

       Get.offAllNamed(Routes.LOGIN);
       print('here else token is ${StoragePrefs.gs.read(StorageConstants.token.toString())}');

       }



   }
}
