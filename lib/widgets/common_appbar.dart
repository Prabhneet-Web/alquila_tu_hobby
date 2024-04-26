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
            Container(
              decoration: BoxDecoration(
                  color: LightTheme.white,
                  borderRadius: BorderRadius.all(
                      Radius.circular(scale.getScaledHeight(13)))),
              margin: scale.getMargin(vertical: 15),
              child: Row(
                children: [
                  SizedBox(
                    width: scale.getScaledWidth(10),
                  ),
                  Center(
                    child: SizedBox(
                      width: scale.fw/6,
                      height: scale.getScaledHeight(90),
                        child: TextField(
                          decoration: InputDecoration(
                              labelStyle: TextStyle(
                                  fontSize: scale.getScaledFont(15)),
                             contentPadding: scale.getPadding(bottom: 5),
                              hintStyle: TextStyle(
                                  color: LightTheme.bluetext,
                                  fontSize: scale.getScaledFont(14)),
                              hintText: "What are you looking for?",
                              border: InputBorder.none),
                        ),
                    ),
                  ),
                  InkWell(
                    onTap: (){},
                    child: Container(
                      decoration: BoxDecoration(
                          color: LightTheme.yellowBG,
                          borderRadius: BorderRadius.all(Radius.circular(
                              scale.getScaledHeight(13)))),
                      child: Center(
                        child: Padding(
                          padding:scale.getPadding(horizontal: 16),
                          child: Text(
                            "Search",
                            style: AppStyle.txtNunitoRegular14White
                                .copyWith(fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ),
                  )
                ],
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
