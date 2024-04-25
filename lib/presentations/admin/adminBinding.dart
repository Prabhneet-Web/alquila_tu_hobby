import 'package:alquila_tu_hobby/presentations/admin/adminConntroller.dart';
import 'package:get/get.dart';

class adminBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => adminContrroller());
  }
}
