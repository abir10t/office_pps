
import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:pps/modules/login/bindings/login_binding.dart';
import 'package:pps/modules/login/ui/login_view.dart';
import 'package:pps/modules/splash_screen/bindings/splash_screen_binding.dart';
import 'package:pps/modules/splash_screen/ui/splash_screen_view.dart';
import 'package:pps/modules/Drawer/ui/drawer_view.dart';
import 'package:pps/modules/Drawer/bindings/drawer_binding.dart';

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
      name: Routes.Drawer,
      page: () => DrawerPage(),
      binding: DrawerBinding(),
    ),
  ];
}