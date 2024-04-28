import 'package:alquila_tu_hobby/core/utils/app_style/app_style.dart';
import 'package:alquila_tu_hobby/core/utils/color_constants/color_constants.dart';
import 'package:alquila_tu_hobby/widgets/common_appbar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../core/utils/scaling_util/scaling_utility.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    final scale = Get.find<ScalingUtility>()..setCurrentDeviceSize(context);
    return Scaffold(
      body: SizedBox(
        height: scale.fh,
        width: scale.fw,
        child: Column(
          children: [
            const CommonAppBar(),
            SizedBox(
              height: scale.getScaledHeight(50),
              width: scale.fw,
            ),
            Expanded(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    constraints: BoxConstraints(maxWidth: 800, minWidth: 300),
                    width: scale.fw / 2.4,
                    padding: scale.getPadding(left: 50),
                    child: SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          FittedBox(
                            fit: BoxFit.scaleDown,
                            child: Text("Personal Details",
                                style: GoogleFonts.poppins(
                                    textStyle: TextStyle(
                                        color: LightTheme.blueColor,
                                        fontSize: (scale.fullWidth) / 1800 * 20,
                                        fontWeight: FontWeight.w500))),
                          ),
                          SizedBox(height: scale.getScaledHeight(15)),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    height: scale.getScaledHeight(230),
                                    width: scale.getScaledHeight(200),
                                    decoration: BoxDecoration(
                                        boxShadow: [
                                          BoxShadow(
                                              color: LightTheme.blueColor
                                                  .withOpacity(0.2),
                                              offset: Offset(0, 10),
                                              blurRadius: 10,
                                              spreadRadius: -5),
                                          BoxShadow(
                                              color: LightTheme.blueColor
                                                  .withOpacity(0.2),
                                              offset: Offset(0, -10),
                                              blurRadius: 10,
                                              spreadRadius: -5),
                                          BoxShadow(
                                              color: LightTheme.blueColor
                                                  .withOpacity(0.2),
                                              offset: Offset(10, 0),
                                              blurRadius: 10,
                                              spreadRadius: -5),
                                          BoxShadow(
                                              color: LightTheme.blueColor
                                                  .withOpacity(0.2),
                                              offset: Offset(-10, 0),
                                              blurRadius: 10,
                                              spreadRadius: -5),
                                        ],
                                        image: const DecorationImage(
                                            image: AssetImage(
                                                "assets/images/dd.jpeg"),
                                            fit: BoxFit.fill),
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(
                                                scale.getScaledFont(30)))),
                                  ),
                                  SizedBox(height: scale.getScaledHeight(35)),
                                  Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text("Address",
                                            style: GoogleFonts.poppins(
                                                textStyle: TextStyle(
                                                    color: LightTheme.blueColor,
                                                    fontSize:
                                                        (scale.fullWidth) /
                                                            1800 *
                                                            20,
                                                    fontWeight:
                                                        FontWeight.w500))),
                                        reusableColumn(scale, "Address line",
                                            "No 35 Jimmy Ebi Street"),
                                        reusableColumn(scale, "City", "NY"),
                                        reusableColumn(
                                            scale, "State", "NewYork"),
                                        reusableColumn(scale, "Country", "USA")
                                      ]),
                                ],
                              ),
                              SizedBox(
                                width: scale.getScaledWidth(18),
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    height: scale.getScaledHeight(230),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        reusableColumn(
                                            scale, "Name", "Ehtesham Aman"),
                                        reusableColumn(
                                            scale, "Gender", "Female"),
                                        reusableColumn(scale, "Date of birth",
                                            "August 27th, 1999"),
                                        reusableColumn(
                                            scale, "Nationality", "USA"),
                                      ],
                                    ),
                                  ),
                                  SizedBox(height: scale.getScaledHeight(35)),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text("Contact Details",
                                          style: GoogleFonts.poppins(
                                              textStyle: TextStyle(
                                                  color: LightTheme.blueColor,
                                                  fontSize: (scale.fullWidth) /
                                                      1800 *
                                                      20,
                                                  fontWeight:
                                                      FontWeight.w500))),
                                      reusableColumn(
                                          scale, "Phone Number", "+9034867656"),
                                      reusableColumn(
                                          scale, "Email", "shery@me.com"),
                                    ],
                                  )
                                ],
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                      //  margin: scale.getMargin(right: 50),
                      child: productGrid(scale))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget reusableColumn(ScalingUtility scale, String lable, String text) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: scale.getScaledHeight(17),
        ),
        Text(lable,
            style: GoogleFonts.poppins(
                textStyle: TextStyle(
                    color: LightTheme.greytext,
                    fontSize: (scale.fullWidth) / 1800 * 12,
                    fontWeight: FontWeight.w600))),
        SizedBox(height: scale.getScaledHeight(3)),
        Text(text,
            style: GoogleFonts.poppins(
                textStyle: TextStyle(
                    color: LightTheme.darkBlack,
                    fontSize: (scale.fullWidth) / 1800 * 15,
                    fontWeight: FontWeight.bold)))
      ],
    );
  }

  Widget productGrid(ScalingUtility scale) {
    return Expanded(
      child: Container(
        padding: scale.getPadding(right: 60),
        child: Column(
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
                          fontSize: scale.getScaledFont(9),
                          color: Colors.white),
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
                  childAspectRatio:
                      .9, // Aspect ratio of each item (width/height)
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
                                    color:
                                        LightTheme.greylight10.withOpacity(0.5),
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
                                      color: LightTheme.greylight10
                                          .withOpacity(.5),
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(
                                              scale.getScaledHeight(10)))),
                                  child: Text(
                                    "Add Category",
                                    style: AppStyle.txtNunitoBold20.copyWith(
                                        fontSize: scale.getScaledFont(7)),
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
        ),
      ),
    );
  }
}
