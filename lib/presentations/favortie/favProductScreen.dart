import 'package:alquila_tu_hobby/core/utils/app_style/app_style.dart';
import 'package:alquila_tu_hobby/core/utils/color_constants/color_constants.dart';
import 'package:alquila_tu_hobby/core/utils/scaling_util/scaling_utility.dart';
import 'package:alquila_tu_hobby/widgets/common_appbar.dart';
import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:clean_calendar/clean_calendar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:just_the_tooltip/just_the_tooltip.dart';

class favProductScreen extends StatelessWidget {
  const favProductScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final scale = Get.find<ScalingUtility>()..setCurrentDeviceSize(context);
    return Scaffold(
        body: Container(
            height: scale.fh,
            width: scale.fw,
            child: Column(children: [
              CommonAppBar(),
              Container(
                height: scale.getScaledHeight(50),
                width: scale.fw,
                //color: const Color.fromARGB(255, 103, 75, 73),
              ),
              Expanded(
                child: Padding(
                  padding: scale.getPadding(left: 40, right: 20, top: 40),
                  child: GridView.builder(
                    //shrinkWrap: true,
                    itemCount: 20, // Number of items in the grid
                    gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                      maxCrossAxisExtent: 350,

                      // Maximum width of each item
                      mainAxisSpacing: scale.getScaledWidth(
                          18), // Spacing between items along the main axis
                      crossAxisSpacing: scale.getScaledWidth(
                          18), //  // Spacing between items along the cross axis
                      childAspectRatio:
                          .7, // Aspect ratio of each item (width/height)
                    ),
                    itemBuilder: (BuildContext context, int index) {
                      return GridTile(
                        child: InkWell(
                          onTap: () {
                            //  Get.toNamed(AppRoutes.product);
                          },
                          child: Container(
                            margin: scale.getMargin(top: 5),
                            // padding: scale.getPadding(vertical: 10),
                            decoration: BoxDecoration(
                                boxShadow: [
                                  BoxShadow(
                                    offset: Offset(2, 0),
                                    blurRadius: 12,
                                    color: Color.fromRGBO(0, 0, 0, 0.16),
                                  )
                                ],
                                color: LightTheme.white,
                                borderRadius: BorderRadius.all(Radius.circular(
                                    scale.getScaledHeight(12)))),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Expanded(
                                    flex: 3,
                                    child: Container(
                                        decoration: BoxDecoration(
                                            color: LightTheme.adminbg,
                                            borderRadius: BorderRadius.only(
                                                topLeft: Radius.circular(
                                                    scale.getScaledHeight(12)),
                                                topRight: Radius.circular(scale
                                                    .getScaledHeight(12)))),
                                        child: Image(
                                            image: AssetImage(
                                                "assets/images/sh1.png")))),
                                Expanded(
                                  flex: 2,
                                  child: Padding(
                                    padding: scale.getPadding(
                                        top: 20,
                                        bottom: 10,
                                        left: 15,
                                        right: 10),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  "Shoes Sneekers",
                                                  style: AppStyle
                                                      .txtNunitoBold20
                                                      .copyWith(
                                                          color: LightTheme
                                                              .darkBlack,
                                                          fontSize: scale
                                                              .getScaledFont(
                                                                  8)),
                                                  textScaleFactor:
                                                      ScaleSize.textScaleFactor(
                                                          context),
                                                ),
                                                SizedBox(
                                                  height:
                                                      scale.getScaledHeight(7),
                                                ),
                                                Text(
                                                  "\$ 50.00",
                                                  style: AppStyle
                                                      .txtNunitoBold20
                                                      .copyWith(
                                                          color: LightTheme
                                                              .blueColor,
                                                          fontSize: scale
                                                              .getScaledFont(
                                                                  8)),
                                                  textScaleFactor:
                                                      ScaleSize.textScaleFactor(
                                                          context),
                                                ),
                                              ],
                                            ),
                                            Container(
                                              height: scale.getScaledHeight(40),
                                              width: scale.getScaledHeight(40),
                                              decoration: BoxDecoration(
                                                  shape: BoxShape.circle,
                                                  color: LightTheme.adminbg),
                                              child: Center(
                                                child: Icon(
                                                  Icons.favorite_outline,
                                                  color: Colors.red,
                                                  size: scale.getScaledFont(24),
                                                ),
                                              ),
                                            )
                                          ],
                                        ),
                                        SizedBox(
                                          height: scale.getScaledHeight(10),
                                        ),
                                        Row(
                                          children: [
                                            for (int i = 0; i < 5; i++)
                                              Image(
                                                  image: AssetImage(
                                                      "assets/logos/star1.png")),
                                            // Container(
                                            //   height: scale.getScaledHeight(18),
                                            //   width: scale.getScaledHeight(18),
                                            //   decoration: BoxDecoration(
                                            //       image: DecorationImage(
                                            //           image: AssetImage(
                                            //               "assets/logos/star1.png"))),
                                            // ),
                                            Text(
                                              "(131)",
                                              style: AppStyle.txtNunitoRegular12
                                                  .copyWith(
                                                      color:
                                                          LightTheme.greylight,
                                                      fontSize: 6,
                                                      fontWeight:
                                                          FontWeight.bold),
                                              textScaleFactor:
                                                  ScaleSize.textScaleFactor(
                                                      context),
                                            )
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ),
            ])));
  }
}
