import 'package:get/get.dart';

import '../controller/dash_board_logic.dart';

class DashBoardBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => DashBoardLogic());
  }
}
