import 'package:alquila_tu_hobby/presentations/message/controller/chat_screen_controller.dart';
import 'package:get/get.dart';


class ChatControllerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ChatScreenController());
  }
}
