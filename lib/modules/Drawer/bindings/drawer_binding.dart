import 'package:get/get.dart';
import 'package:pps/modules/Drawer/controller/drawer_logic.dart';



class DrawerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => DrawerLogic());
  }
}
