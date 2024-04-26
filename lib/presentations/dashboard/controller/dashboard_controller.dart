import 'package:alquila_tu_hobby/widgets/check_box.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

class DashboardController extends GetxController {
  RxList<String>? categories = [
    "All Categories", "Shoes", "Shirt", "Polo", "T-shirt", "Joggers"
  ].obs;

  RxList<bool>? isCategorySelected = [false,false,false,false,false,false].obs;

  RxList<int>? quantityOfEachCategory = [2,5,8,22,5,5].obs;
  RxList<CheckboxState>? boxState = [CheckboxState.UNCHECKED,CheckboxState.UNCHECKED,CheckboxState.UNCHECKED,CheckboxState.UNCHECKED,CheckboxState.UNCHECKED,CheckboxState.UNCHECKED].obs;

}