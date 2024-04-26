import 'package:alquila_tu_hobby/presentations/product/controller/product_screen_controller.dart';
import 'package:get/get.dart';

class ProductScreenControllerBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ProductScreenController());
  }
}
