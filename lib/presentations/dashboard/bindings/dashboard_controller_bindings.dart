import 'package:alquila_tu_hobby/presentations/dashboard/controller/dashboard_controller.dart';
import 'package:get/get.dart';

class DashboardControllerBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => DashboardController());
  }
}
