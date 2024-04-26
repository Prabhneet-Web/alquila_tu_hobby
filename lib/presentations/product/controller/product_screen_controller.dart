import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

class ProductScreenController extends GetxController {
  Rx<String>? productName = "Nike Shoes".obs;
  Rx<double>? productPrice = 12.5.obs;
  Rx<double>? productRatings = 0.0.obs;
  RxList<int>? productSize = [30 , 56, 42, 48].obs;
}