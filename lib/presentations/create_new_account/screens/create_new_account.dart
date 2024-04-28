import 'package:alquila_tu_hobby/core/utils/app_style/app_style.dart';
import 'package:alquila_tu_hobby/core/utils/color_constants/color_constants.dart';
import 'package:alquila_tu_hobby/core/utils/image_constants/image_constants.dart';
import 'package:alquila_tu_hobby/core/utils/scaling_util/scaling_utility.dart';
import 'package:alquila_tu_hobby/presentations/create_new_account/controller/create_new_account_controller.dart';
import 'package:alquila_tu_hobby/routes/app_routes.dart';
import 'package:alquila_tu_hobby/widgets/check_box.dart';
import 'package:alquila_tu_hobby/widgets/custom_text_formfield.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CreateNewAccount extends GetView<CreateNewAccountController> {
  const CreateNewAccount({super.key});

  @override
  Widget build(BuildContext context) {
    final scale = Get.find<ScalingUtility>()..setCurrentDeviceSize(context);
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: scale.getScaledHeight(64.76),
            color: LightTheme.darkBlack,
            child: Padding(
              padding: scale.getPadding(left: 30),
              child: Row(
                children: [
                  Image.asset(ImageConstants.logo,
                      height: scale.getScaledHeight(34.51)),
                  SizedBox(width: scale.getScaledWidth(10)),
                  Image.asset(ImageConstants.logoText,
                      height: scale.getScaledHeight(34.51))
                ],
              ),
            ),
          ),
          Container(
            height: (scale.fullHeight - scale.getScaledHeight(64.76)),
            color: LightTheme.yellowBG,
            child: Center(
              child: Container(
                height: scale.getScaledHeight(630),
                width: scale.getScaledWidth(440),
                decoration: BoxDecoration(
                    color: LightTheme.white,
                    borderRadius: BorderRadius.circular(16)),
                child: Padding(
                  padding: scale.getPadding(all: 34),
                  child: Column(
                    children: [
                      SizedBox(height: scale.getScaledHeight(10)),
                      Text("Create an Account",
                          style: AppStyle.txtNunitoBold20),
                      SizedBox(height: scale.getScaledHeight(10)),
                      Text("Create a account to continue",
                          style: AppStyle.txtNunitoRegular12),
                      SizedBox(height: scale.getScaledHeight(28)),
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Text("Email address:",
                              style: AppStyle.txtNunitoRegular12)),
                      SizedBox(height: scale.getScaledHeight(12)),
                      CustomTextFormField(
                          controller: controller.loginController,
                          hintText: "sharybro@gmail.com",
                          width: double.infinity),
                      SizedBox(height: scale.getScaledHeight(26)),
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Text("Username:",
                              style: AppStyle.txtNunitoRegular12)),
                      SizedBox(height: scale.getScaledHeight(12)),
                      CustomTextFormField(
                          controller: controller.userNameController,
                          hintText: "Username",
                          width: double.infinity),
                      SizedBox(height: scale.getScaledHeight(26)),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Password:", style: AppStyle.txtNunitoRegular12),
                          InkWell(
                              onTap: () {},
                              child: Text("Forget Password?",
                                  style: AppStyle.txtNunitoRegular12)),
                        ],
                      ),
                      SizedBox(height: scale.getScaledHeight(12)),
                      CustomTextFormField(
                          controller: controller.passwordController,
                          hintText: "* * * * * *",
                          width: double.infinity),
                      SizedBox(height: scale.getScaledHeight(16)),
                      Row(
                        children: [
                          TriStateCheckbox(
                            boxState: CheckboxState.CHECKED,
                            onTap: () {},
                          ),
                          SizedBox(width: scale.getScaledWidth(8)),
                          Text("I accept terms and conditions",
                              style: AppStyle.txtNunitoRegular12),
                        ],
                      ),
                      SizedBox(height: scale.getScaledHeight(40)),
                      InkWell(
                        onTap: () {
                          if(controller.userNameController.text.isNotEmpty && controller.loginController.text.isNotEmpty && controller.passwordController.text.isNotEmpty) {
                            controller.signUp();
                          } else {
                            Get.rawSnackbar(
                              messageText: const Text(
                                'Please enter all the fields',
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                            );
                          }
                        },
                        child: Container(
                          height: scale.getScaledHeight(46),
                          width: scale.getScaledWidth(300),
                          decoration: BoxDecoration(
                              color: LightTheme.yellowBG,
                              borderRadius: BorderRadius.circular(8)),
                          child: Center(
                            child: Text(
                              "Sign up",
                              style: AppStyle.txtNunitoRegular14White,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: scale.getScaledHeight(16)),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Already have an account?",
                              style: AppStyle.txtNunitoRegular12),
                          SizedBox(width: scale.getScaledWidth(3)),
                          InkWell(
                            onTap: () {
                              Get.toNamed(AppRoutes.login);
                            },
                            child: Text("Login",
                                style:
                                    AppStyle.txtNunitoRegular12UnderlinedBlue),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
