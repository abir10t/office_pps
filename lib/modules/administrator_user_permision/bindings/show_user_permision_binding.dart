

import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/bindings_interface.dart';
import 'package:get/get_instance/src/extension_instance.dart';
import 'package:pps/modules/administrator_user_permision/controller/administrator_user_permision_logic.dart';

class Show_user_permisionBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => Show_user_permisionLogic());
  }
}
