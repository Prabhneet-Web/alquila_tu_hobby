import 'package:alquila_tu_hobby/core/logics/firebase_auth_services.dart';
import 'package:alquila_tu_hobby/routes/app_routes.dart';
import 'package:alquila_tu_hobby/widgets/check_box.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {
  TextEditingController loginController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  Rx<CheckboxState>? boxState = CheckboxState.UNCHECKED.obs;
  final FirebaseAuthService _auth = FirebaseAuthService();

  void signIn() async {
    String passWord = passwordController.text;
    String email = loginController.text;
    User? user = await _auth.signinWithEmailAndPassword(email, passWord);

    if(user != null){
      print("User sign-in successfully");
      Get.toNamed(AppRoutes.dashboard);
    } else{
      print("Some error occurred");
    }
  }

  @override
  void dispose (){
    super.dispose();
    loginController.dispose();
    passwordController.dispose();
  }

}