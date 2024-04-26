import 'package:get/get.dart';

import 'chatScreenController.dart';

class cahtBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => chatScreeenController());
  }
}
