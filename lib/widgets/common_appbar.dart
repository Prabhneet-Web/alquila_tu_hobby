import 'package:alquila_tu_hobby/core/utils/app_style/app_style.dart';
import 'package:alquila_tu_hobby/core/utils/color_constants/color_constants.dart';
import 'package:alquila_tu_hobby/core/utils/image_constants/image_constants.dart';
import 'package:alquila_tu_hobby/core/utils/scaling_util/scaling_utility.dart';
import 'package:alquila_tu_hobby/routes/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class CommonAppBar extends StatelessWidget {
  const CommonAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    final scale = Get.find<ScalingUtility>()..setCurrentDeviceSize(context);
    return Container(
      constraints: const BoxConstraints(minHeight: 60),
      height: scale.getScaledHeight(64.76),
      color: LightTheme.darkBlack,
      child: Padding(
        padding: scale.getPadding(
          left: 25,
        ),
        child: Row(
          children: [
            Row(
              children: [
                Image.asset(ImageConstants.logo,
                    height: scale.getScaledHeight(34.51)),
                SizedBox(width: scale.getScaledWidth(10)),
                Image.asset(ImageConstants.logoText,
                    height: scale.getScaledHeight(34.51))
              ],
            ),
            SizedBox(
              width: scale.getScaledWidth(100),
            ),
            Center(
              child: Padding(
                padding: scale.getPadding(vertical: 13),
                child: Container(
                  width: scale.getScaledWidth(290),
                  constraints: const BoxConstraints(minHeight: 40),
                  child: AspectRatio(
                    aspectRatio: 4,
                    child: TextField(
                      decoration: InputDecoration(
                        suffixIcon: Container(
                          margin: scale.getMargin(vertical: 1),
                          width: scale.getScaledWidth(80),
                          decoration: const BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
                              color: Colors.amber),
                          child: Center(
                            child: Text(
                              "Search",
                              textScaleFactor:
                                  ScaleSize.textScaleFactor(context),
                              style: AppStyle.txtNunitoBold20.copyWith(
                                  fontSize: 7, color: LightTheme.white),
                            ),
                          ),
                        ),
                        filled: true,
                        fillColor: Colors.white,
                        labelStyle:
                            TextStyle(fontSize: scale.getScaledFont(14)),
                        //  contentPadding: scale.getPadding(left: 5,bottom: 4),
                        hintStyle: TextStyle(
                            color: LightTheme.bluetext,
                            fontSize: (scale.fullWidth)/(scale.fullHeight) * 7),
                        hintText: "What are you looking for?",
                        border: const OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            borderSide: BorderSide(color: Colors.transparent)),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            const Spacer(),
            Container(
              margin: scale.getMargin(vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  InkWell(
                    onTap: () {
                      Get.toNamed(AppRoutes.profile);
                    },
                    child: Row(
                      children: [
                        SizedBox(
                          height: scale.getScaledHeight(20),
                          width: scale.getScaledHeight(20),
                          child: Image.asset("assets/logos/user.png"),
                        ),
                        SizedBox(
                          width: scale.getScaledWidth(6),
                        ),
                        Text(
                          "Profile",
                          style: AppStyle.txtNunitoBold20.copyWith(
                              fontSize: 9,
                              color: LightTheme.white,
                              fontWeight: FontWeight.bold),
                          textScaleFactor: ScaleSize.textScaleFactor(context),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    width: scale.getScaledWidth(35),
                  ),
                  InkWell(
                    onTap: () => Get.toNamed(AppRoutes.favourite),
                    child: Row(
                      children: [
                        SizedBox(
                          height: scale.getScaledHeight(20),
                          width: scale.getScaledHeight(20),
                          child: Image.asset("assets/logos/heart1.png"),
                        ),
                        SizedBox(
                          width: scale.getScaledWidth(6),
                        ),
                        Text(
                          "Favourite",
                          style: AppStyle.txtNunitoBold20.copyWith(
                              fontSize: 9,
                              color: LightTheme.white,
                              fontWeight: FontWeight.bold),
                          textScaleFactor: ScaleSize.textScaleFactor(context),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    width: scale.getScaledWidth(35),
                  ),
                  InkWell(
                    onTap: () => Get.toNamed(AppRoutes.chat),
                    child: Row(
                      children: [
                        SizedBox(
                          height: scale.getScaledHeight(20),
                          width: scale.getScaledHeight(20),
                          child: Image.asset("assets/logos/c1.png"),
                        ),
                        SizedBox(
                          width: scale.getScaledWidth(6),
                        ),
                        Text(
                          "Chat",
                          style: AppStyle.txtNunitoBold20.copyWith(
                              fontSize: 9,
                              color: LightTheme.white,
                              fontWeight: FontWeight.bold),
                          textScaleFactor: ScaleSize.textScaleFactor(context),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    width: scale.getScaledWidth(35),
                  ),
                  InkWell(
                    onTap: () => Get.toNamed(AppRoutes.cart),
                    child: Row(
                      children: [
                        SizedBox(
                          height: scale.getScaledHeight(20),
                          width: scale.getScaledHeight(20),
                          child: Image.asset("assets/logos/scart.png"),
                        ),
                        SizedBox(
                          width: scale.getScaledWidth(6),
                        ),
                        Text(
                          "Cart",
                          style: AppStyle.txtNunitoBold20.copyWith(
                              fontSize: 9,
                              color: LightTheme.white,
                              fontWeight: FontWeight.bold),
                          textScaleFactor: ScaleSize.textScaleFactor(context),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    width: scale.getScaledWidth(45),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
