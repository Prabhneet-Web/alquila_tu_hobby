import 'package:alquila_tu_hobby/core/logics/firebase_auth_services.dart';
import 'package:alquila_tu_hobby/routes/app_routes.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CreateNewAccountController extends GetxController {
  TextEditingController loginController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController userNameController = TextEditingController();
  final FirebaseAuthService _auth = FirebaseAuthService();

  void signUp() async {
    String userName = userNameController.text;
    String passWord = passwordController.text;
    String email = loginController.text;
    User? user = await _auth.signupWithEmailAndPassword(email, passWord);

    if(user != null){
      print("User created successfully");
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
    userNameController.dispose();
  }

}