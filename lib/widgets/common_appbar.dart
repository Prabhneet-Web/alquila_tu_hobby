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
      constraints: BoxConstraints(minHeight: 60),
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
                  constraints: BoxConstraints(minHeight: 40),
                  child: AspectRatio(
                    aspectRatio: 5,
                    child: TextField(

                      decoration: InputDecoration(

                        suffixIcon: Container(margin: scale.getMargin(vertical: 1), width: scale.getScaledWidth(80),decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(10)),color: Colors.amber),child: Center(
                          child: Text(
                            "Search",
                            textScaleFactor:
                            ScaleSize.textScaleFactor(
                                context),
                            style: AppStyle.txtNunitoBold20
                                .copyWith(

                                fontSize: 7,
                                color: LightTheme.white),
                          ),
                        ),),
                        filled: true,
                        fillColor: Colors.white,
                        labelStyle: TextStyle(
                            fontSize: scale.getScaledFont(14)),
                        //  contentPadding: scale.getPadding(left: 5,bottom: 4),
                        hintStyle: TextStyle(
                            color: LightTheme.bluetext,
                            fontSize: scale.getScaledFont(14)),
                        hintText: "What are you looking for?",
                        border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(10)),borderSide: BorderSide(color: Colors.transparent)),),
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
                      Get.toNamed(AppRoutes.adminDashboard);
                    },
                    child: Row(
                      children: [
                        const Icon(
                          Icons.person,
                          color: LightTheme.white,
                        ),
                        SizedBox(
                          width: scale.getScaledWidth(10),
                        ),
                        Text(
                          "Profile",
                          style: AppStyle.txtNunitobold14White,
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
                        const Icon(
                          Icons.favorite_border_outlined,
                          color: LightTheme.white,
                        ),
                        SizedBox(
                          width: scale.getScaledWidth(10),
                        ),
                        Text(
                          "Favourite",
                          style: AppStyle.txtNunitobold14White,
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
                        const Icon(
                          Icons.chat,
                          color: LightTheme.white,
                        ),
                        SizedBox(
                          width: scale.getScaledWidth(10),
                        ),
                        Text(
                          "Chat",
                          style: AppStyle.txtNunitobold14White,
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
                        const Icon(
                          Icons.shopping_cart,
                          color: LightTheme.white,
                        ),
                        SizedBox(
                          width: scale.getScaledWidth(10),
                        ),
                        Text(
                          "Cart",
                          style: AppStyle.txtNunitobold14White,
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