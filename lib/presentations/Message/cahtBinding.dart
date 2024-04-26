import 'package:alquila_tu_hobby/presentations/Massage/chatScreenController.dart';
import 'package:get/get.dart';

class cahtBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => chatScreeenController());
  }
}
