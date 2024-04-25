import 'package:alquila_tu_hobby/presentations/create_new_account/controller/create_new_account_controller.dart';
import 'package:get/get.dart';
import 'package:get/get_instance/src/bindings_interface.dart';

class CreateNewAccountControllerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => CreateNewAccountController());
  }
}
