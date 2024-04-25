import 'package:alquila_tu_hobby/core/utils/color_constants/color_constants.dart';
import 'package:alquila_tu_hobby/core/utils/scaling_util/scaling_utility.dart';
import 'package:alquila_tu_hobby/presentations/login/controller/login_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Login extends GetView<LoginController> {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    final scale = Get.find<ScalingUtility>()..setCurrentDeviceSize(context);
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: scale.getScaledHeight(100),
            color: LightTheme.darkBlack,
          ),
          Container(
            height: (scale.fullHeight - scale.getScaledHeight(100)),
          )
        ],
      ),
    );
  }
}
