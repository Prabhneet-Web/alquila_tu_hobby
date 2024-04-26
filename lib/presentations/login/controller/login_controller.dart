import 'package:alquila_tu_hobby/widgets/check_box.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {
  TextEditingController loginController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  Rx<CheckboxState>? boxState = CheckboxState.UNCHECKED.obs;
}