import 'package:get/get.dart';

import '../controller/administrator__user_logic.dart';

class Administrator_UserBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => Administrator_UserLogic());
  }
}
