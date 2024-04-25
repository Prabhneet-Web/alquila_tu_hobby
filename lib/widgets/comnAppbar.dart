import 'package:alquila_tu_hobby/core/utils/app_style/app_style.dart';
import 'package:alquila_tu_hobby/core/utils/color_constants/color_constants.dart';
import 'package:alquila_tu_hobby/core/utils/image_constants/image_constants.dart';
import 'package:alquila_tu_hobby/core/utils/scaling_util/scaling_utility.dart';
import 'package:alquila_tu_hobby/routes/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class Appbar extends StatelessWidget {
  const Appbar({super.key});

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
            Expanded(
                flex: 3,
                child: Container(
                  decoration: BoxDecoration(
                      color: LightTheme.white,
                      borderRadius: BorderRadius.all(
                          Radius.circular(scale.getScaledHeight(10)))),
                  margin: scale.getMargin(vertical: 15),
                  child: Row(
                    children: [
                      SizedBox(
                        width: scale.getScaledWidth(10),
                      ),
                      Expanded(
                          flex: 8,
                          child: Center(
                            child: TextField(
                              decoration: InputDecoration(
                                  contentPadding: EdgeInsets.zero,
                                  hintStyle: TextStyle(
                                      color: LightTheme.bluetext,
                                      fontSize: scale.getScaledFont(14)),
                                  hintText: "What are you looking for?",
                                  border: InputBorder.none),
                            ),
                          )),
                      Expanded(
                          flex: 3,
                          child: Container(
                            decoration: BoxDecoration(
                                color: LightTheme.yellowBG,
                                borderRadius: BorderRadius.all(Radius.circular(
                                    scale.getScaledHeight(10)))),
                            child: Center(
                              child: Text(
                                "Search",
                                style: AppStyle.txtNunitoRegular14White
                                    .copyWith(fontWeight: FontWeight.bold),
                              ),
                            ),
                          ))
                    ],
                  ),
                )),
            Expanded(
                flex: 8,
                child: Container(
                  margin: scale.getMargin(vertical: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      InkWell(
                        onTap: () {
                          Get.to(AppRoutes.adminDashboard);
                        },
                        child: Container(
                          child: Row(
                            children: [
                              Icon(
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
                      ),
                      SizedBox(
                        width: scale.getScaledWidth(35),
                      ),
                      Container(
                        child: Row(
                          children: [
                            Icon(
                              Icons.favorite_border_outlined,
                              color: LightTheme.white,
                            ),
                            SizedBox(
                              width: scale.getScaledWidth(10),
                            ),
                            Text(
                              "Favorite",
                              style: AppStyle.txtNunitobold14White,
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        width: scale.getScaledWidth(35),
                      ),
                      Container(
                        child: Row(
                          children: [
                            Icon(
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
                      Container(
                        child: Row(
                          children: [
                            Icon(
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
                ))
          ],
        ),
      ),
    );
  }
}
