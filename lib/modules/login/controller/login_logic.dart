import 'dart:convert';
import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:pps/modules/login/provider/login_api_provider.dart';
import 'package:pps/routes/app_routes.dart';
import 'package:pps/shared/constants/storage.dart';
import 'package:pps/shared/storage_prefs.dart';
import 'package:pps/shared/widgets/loader/loader_class.dart';
import 'package:http/http.dart' as http;
import 'package:pps/shared/widgets/snackbar/snackbar.dart';



class LoginLogic extends GetxController
{

  final obscureStatus = false.obs;
  var isSubmitButtonEnabled = false.obs;
  final validation = true.obs;



  TextEditingController email = new TextEditingController();
  TextEditingController password = new TextEditingController();


  final GlobalKey<FormFieldState> emailFormKey = GlobalKey<FormFieldState>();
  final GlobalKey<FormFieldState> passwordFormKey = GlobalKey<FormFieldState>();

  AuthApiProvider provider = AuthApiProvider();

  @override
  void onInit()
  {
    super.onInit();

  }

  bool isLoginFormValid()
  {
    return ((emailFormKey.currentState!.isValid && passwordFormKey.currentState!.isValid));
  }

  void submit()
  {
      login();
  }

  login() async
  {
    Loader.showLoading(dismissOnTap: false);

    try{
      http.Response response = await provider.login(email: email.text.toString(),password: password.text.toString());
      var jsonData = jsonDecode(response.body);

      if(response.statusCode == 200)
      {
        print("success access token is ${jsonData["access_token"]}");
        Loader.dismissLoading();
        await StoragePrefs.gs.write(StorageConstants.token, jsonData["access_token"].toString());
        debugPrint('one ${StoragePrefs.gs.read(StorageConstants.token.toString())}');

        await SnackBarProvider.showSnackBar(title: "Success",message: "Login Successful");
        await Get.toNamed(Routes.Drawer);
      }

      else
        {
          Loader.dismissLoading();
          await SnackBarProvider.showSnackBar(title: "Failed",message: "Wrong email or password");
       }

    }


    on SocketException
    {
      Loader.dismissLoading();
      await SnackBarProvider.showSnackBar(title: "Failed",message: "No Internet Connection");
    }

    on Exception
    {
      Loader.dismissLoading();
      await SnackBarProvider.showSnackBar(title: "Failed",message: "Something Wrong");
    }

    catch (e){}

  }



  loginsnackbar() async
  {
    await SnackBarProvider.showSnackBar(title: "not success",message: "Please Provide valid user name and password");

  }


}
