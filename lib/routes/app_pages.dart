
import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:pps/modules/administrator__user/bindings/administrator__user_binding.dart';
import 'package:pps/modules/administrator__user/ui/administrator__user_view.dart';
import 'package:pps/modules/dash_board/bindings/dash_board_binding.dart';
import 'package:pps/modules/dash_board/ui/dash_board_view.dart';
import 'package:pps/modules/login/bindings/login_binding.dart';
import 'package:pps/modules/login/ui/login_view.dart';
import 'package:pps/modules/splash_screen/bindings/splash_screen_binding.dart';
import 'package:pps/modules/splash_screen/ui/splash_screen_view.dart';


import 'app_routes.dart';

class AppPages
{
  static const INITIAL = Routes.SPLASH;

  static final routes =
  [
    GetPage(
      name: Routes.SPLASH,
      page: () =>  SplashScreen(),
      binding: SplashScreenBinding(),
    ),
    GetPage(
      name: Routes.LOGIN,
      page: () => LoginScreen(),
      binding: LoginBinding(),
    ),
    GetPage(
      name: Routes.AdministratorUser,
      page: () => Administrator_UserPage(),
      binding: Administrator_UserBinding(),
    ),
    GetPage(
      name: Routes.Dashboard,
      page: () => DashBoardPage(),
      binding: DashBoardBinding(),
    ),
  ];
}