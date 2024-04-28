import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FirebaseAuthService {
  FirebaseAuth _auth = FirebaseAuth.instance;

  Future<User?> signupWithEmailAndPassword (String email, String password) async {
    try{
      UserCredential credential = await _auth.createUserWithEmailAndPassword(email: email, password: password);
      return credential.user;
    } catch (e){
      Get.rawSnackbar(
        messageText: Text(
          "$e",
          style: const TextStyle(
            color: Colors.white,
          ),
        ),
      );    }
    return null;
  }

  Future<User?> signinWithEmailAndPassword (String email, String password) async {
    try{
      UserCredential credential = await _auth.signInWithEmailAndPassword(email: email, password: password);
      return credential.user;
    } catch (e){
      Get.rawSnackbar(
        messageText: Text(
          '$e',
          style: const TextStyle(
            color: Colors.white,
          ),
        ),
      );
    }
    return null;
  }


}