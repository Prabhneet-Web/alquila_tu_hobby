import 'package:alquila_tu_hobby/core/utils/scaling_util/scaling_utility.dart';
import 'package:get/get.dart';
import 'package:get/get_instance/src/bindings_interface.dart';

class InitialBindings extends Bindings {
  @override
  Future<void> dependencies() async {
    Get.put(ScalingUtility(), permanent: true);
  }
}