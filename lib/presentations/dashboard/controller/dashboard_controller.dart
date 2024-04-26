import 'package:alquila_tu_hobby/widgets/check_box.dart';
import 'package:flutter/material.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

class DashboardController extends GetxController {
  RxList<String>? categories = ["All Categories", "Shoes", "Shirt", "Polo", "T-shirt", "Joggers"].obs;
  RxList<bool>? isCategorySelected = [false,false,false,false,false,false].obs;
  RxList<int>? quantityOfEachCategory = [2,5,8,22,5,5].obs;
  RxList<int>? quantityOfEachSize = [2,5,8,9].obs;
  RxList<CheckboxState>? boxStateOfCategories = [CheckboxState.UNCHECKED,CheckboxState.UNCHECKED,CheckboxState.UNCHECKED,CheckboxState.UNCHECKED,CheckboxState.UNCHECKED,CheckboxState.UNCHECKED].obs;
  RxList<CheckboxState>? boxStateOfSizes = [CheckboxState.UNCHECKED,CheckboxState.UNCHECKED,CheckboxState.UNCHECKED,CheckboxState.UNCHECKED].obs;
  Rx<int>? numberOfColorsSelected = 0.obs;
  RxList<Color>? colorsToSelect = [Colors.red, Colors.green, Colors.yellow, Colors.blue, Colors.orange, Colors.white, Colors.black, Colors.grey].obs;
  Rx<int>? sizeToSelect = 0.obs;
  RxList<String>? size = ["M", "S", "X", "XX"].obs;
  RxList<String>? nameOfItems = ["Puma Sneakers", "Blue Sneakers", "Adidas Sneakers", "Nike Sneakers","Hoka Sneakers", "Blue Sneakers","Hoka Sneakers", "Blue Sneakers","Hoka Sneakers", "Blue Sneakers","Hoka Sneakers", "Blue Sneakers","Hoka Sneakers", "Blue Sneakers","Hoka Sneakers", "Blue Sneakers","Hoka Sneakers", "Blue Sneakers","Hoka Sneakers", "Blue Sneakers","Hoka Sneakers", "Blue Sneakers",].obs;
  RxList<int>? priceOfItems = [10,20,21,23,20,41,42,64,10,1,10,20,21,23,20,41,42,64,10,1,32,41].obs;
  RxList<double>? ratingOfItems = [0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0].obs;
}