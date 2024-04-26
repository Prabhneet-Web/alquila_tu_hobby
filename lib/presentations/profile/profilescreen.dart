import 'package:alquila_tu_hobby/core/utils/app_style/app_style.dart';
import 'package:alquila_tu_hobby/core/utils/color_constants/color_constants.dart';
import 'package:alquila_tu_hobby/widgets/common_appbar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../core/utils/scaling_util/scaling_utility.dart';

class profileScreen extends StatefulWidget {
  const profileScreen({super.key});

  @override
  State<profileScreen> createState() => _profileScreenState();
}

class _profileScreenState extends State<profileScreen> {
  @override
  Widget build(BuildContext context) {
    final scale = Get.find<ScalingUtility>()..setCurrentDeviceSize(context);
    return Scaffold(
      body: Container(
        height: scale.fh,
        width: scale.fw,
        child: Column(
          children: [
            CommonAppBar(),
            Container(
              height: scale.getScaledHeight(50),
              width: scale.fw,
              //color: const Color.fromARGB(255, 103, 75, 73),
            ),
            Expanded(
                child: Row(
              children: [
                Expanded(
                    flex: 3,
                    child: Container(
                      padding: scale.getPadding(left: 50),
                      child: SingleChildScrollView(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Personal details",
                              style: AppStyle.txtNunitobold14White.copyWith(
                                  color: LightTheme.blueColor,
                                  fontSize: scale.getScaledFont(12)),
                              textScaleFactor:
                                  ScaleSize.textScaleFactor(context),
                            ),
                            SizedBox(height: scale.getScaledHeight(15)),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  height: scale.getScaledHeight(260),
                                  width: scale.getScaledWidth(220),
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                          image: AssetImage(
                                              "assets/images/dd.jpeg"),
                                          fit: BoxFit.fill),
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(
                                              scale.getScaledFont(15)))),
                                ),
                                SizedBox(
                                  width: scale.getScaledWidth(18),
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    reUsablecolm(
                                        scale, "Name", "Etrana araman"),
                                    reUsablecolm(scale, "Gender", "Female"),
                                    reUsablecolm(
                                        scale, "Date of birth", "01-jan-2025"),
                                    reUsablecolm(scale, "Nationality", "INDIAN")
                                  ],
                                )
                              ],
                            ),
                            SizedBox(
                              height: scale.getScaledHeight(22),
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  width: scale.getScaledWidth(230),
                                  child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Address",
                                          style: AppStyle.txtNunitobold14White
                                              .copyWith(
                                                  color: LightTheme.blueColor,
                                                  fontSize:
                                                      scale.getScaledFont(9)),
                                          textScaleFactor:
                                              ScaleSize.textScaleFactor(
                                                  context),
                                        ),
                                        reUsablecolm(scale, "Address line",
                                            "abc road efg apt. xzcity"),
                                        reUsablecolm(
                                            scale, "City", "Ahmedabad"),
                                        reUsablecolm(scale, "State", "J&K"),
                                        reUsablecolm(scale, "Country", "INDIA")
                                      ]),
                                ),
                                SizedBox(
                                  width: scale.getScaledWidth(18),
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Contact Details",
                                      style: AppStyle.txtNunitobold14White
                                          .copyWith(
                                              color: LightTheme.blueColor,
                                              fontSize: scale.getScaledFont(9)),
                                      textScaleFactor:
                                          ScaleSize.textScaleFactor(context),
                                    ),
                                    reUsablecolm(
                                        scale, "Phone Number", "+90374627364"),
                                    reUsablecolm(
                                        scale, "Eamin", "abcd@gmail.com"),
                                  ],
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    )),
                Expanded(
                    flex: 5,
                    child: Container(
                      padding: scale.getPadding(right: 70),
                      child: productGrid(scale),
                    ))
              ],
            ))
          ],
        ),
      ),
    );
  }

  Widget reUsablecolm(ScalingUtility scale, String lable, String text) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: scale.getScaledHeight(17),
        ),
        Text(
          lable,
          style: AppStyle.txtNunitobold14White.copyWith(
              color: LightTheme.greytext, fontSize: scale.getScaledFont(6)),
          textScaleFactor: ScaleSize.textScaleFactor(context),
        ),
        SizedBox(height: scale.getScaledHeight(3)),
        Text(
          text,
          style: AppStyle.txtNunitobold14White.copyWith(
              color: LightTheme.darkBlack, fontSize: scale.getScaledFont(8)),
          textScaleFactor: ScaleSize.textScaleFactor(context),
        )
      ],
    );
  }

  Widget productGrid(ScalingUtility scale) {
    return Column(
      children: [
        SizedBox(
          height: scale.getScaledHeight(15),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Product",
              style: AppStyle.txtNunitoBold20.copyWith(
                  color: LightTheme.darkBlack,
                  fontSize: scale.getScaledFont(18)),
              textScaleFactor: ScaleSize.textScaleFactor(context),
            ),
            Container(
              decoration: BoxDecoration(
                  color: LightTheme.yellowBG,
                  borderRadius: BorderRadius.all(
                      Radius.circular(scale.getScaledHeight(10)))),
              height: scale.getScaledHeight(50),
              width: scale.getScaledWidth(170),
              child: Center(
                child: Text(
                  "Add Product",
                  style: AppStyle.txtNunitoBold20.copyWith(
                      fontSize: scale.getScaledFont(9), color: Colors.white),
                  textScaleFactor: ScaleSize.textScaleFactor(context),
                ),
              ),
            ),
          ],
        ),
        SizedBox(
          height: scale.getScaledHeight(10),
        ),
        Expanded(
          child: GridView.builder(
            shrinkWrap: true,
            itemCount: 20, // Number of items in the grid
            gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 350,

              // Maximum width of each item
              mainAxisSpacing: scale.getScaledWidth(
                  22), // Spacing between items along the main axis
              crossAxisSpacing: scale.getScaledWidth(
                  22), //  // Spacing between items along the cross axis
              childAspectRatio: .9, // Aspect ratio of each item (width/height)
            ),
            itemBuilder: (BuildContext context, int index) {
              return GridTile(
                child: InkWell(
                  splashColor: Colors.transparent,
                  focusColor: Colors.transparent,
                  hoverColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  onTap: () {
                    //  Get.toNamed(AppRoutes.product);
                  },
                  child: Container(
                      decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                                color: LightTheme.greylight10.withOpacity(0.5),
                                offset: Offset(0, 25),
                                blurRadius: 3,
                                spreadRadius: -10),
                          ],
                          color: Colors.white,
                          borderRadius: BorderRadius.all(
                              Radius.circular(scale.getScaledHeight(12)))),
                      child: Container(
                        decoration: BoxDecoration(
                            image: DecorationImage(
                          image: AssetImage("assets/images/sh2.png"),
                          fit: BoxFit.fill,
                        )),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Container(
                              padding: scale.getPadding(
                                  horizontal: 10, vertical: 10),
                              margin: scale.getMargin(bottom: 17),
                              decoration: BoxDecoration(
                                  color: LightTheme.greylight10.withOpacity(.5),
                                  borderRadius: BorderRadius.all(
                                      Radius.circular(
                                          scale.getScaledHeight(10)))),
                              child: Text(
                                "Add Category",
                                style: AppStyle.txtNunitoBold20
                                    .copyWith(fontSize: scale.getScaledFont(7)),
                                textScaleFactor:
                                    ScaleSize.textScaleFactor(context),
                              ),
                            ),
                          ],
                        ),
                      )),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
