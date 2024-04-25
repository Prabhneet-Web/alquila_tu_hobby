import 'package:alquila_tu_hobby/core/utils/app_style/app_style.dart';
import 'package:alquila_tu_hobby/core/utils/color_constants/color_constants.dart';
import 'package:alquila_tu_hobby/core/utils/image_constants/image_constants.dart';
import 'package:alquila_tu_hobby/core/utils/scaling_util/scaling_utility.dart';
import 'package:alquila_tu_hobby/routes/app_routes.dart';
import 'package:alquila_tu_hobby/widgets/check_box.dart';
import 'package:alquila_tu_hobby/widgets/comnAppbar.dart';
import 'package:alquila_tu_hobby/widgets/custom_text_formfield.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class dashBoardscreen extends StatelessWidget {
  const dashBoardscreen({super.key});

  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.aspectRatio;
    final scale = Get.find<ScalingUtility>()..setCurrentDeviceSize(context);
    return Scaffold(
      body: Container(
        height: scale.fh,
        width: scale.fw,
        child: Column(
          children: [
            Appbar(),
            Container(
              height: scale.getScaledHeight(50),
              width: scale.fw,
              //color: const Color.fromARGB(255, 103, 75, 73),
            ),
            Expanded(
                child: Container(
              // margin: scale.getPadding(right: 40, left: 20, top: 40),

              child: Row(
                children: [
                  Expanded(
                      flex: 3,
                      child: Container(
                        margin: scale.getPadding(right: 20, left: 40, top: 40),
                        padding: scale.getPadding(horizontal: 20),
                        child: Column(
                          children: [
                            Column(
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "Categories",
                                      style: TextStyle(
                                          color: LightTheme.bluetext,
                                          fontWeight: FontWeight.bold,
                                          fontSize: scale.getScaledFont(8)),
                                      textScaleFactor:
                                          ScaleSize.textScaleFactor(context),
                                    ),
                                    Text(
                                      "Reset",
                                      style: TextStyle(
                                          color: LightTheme.greytext,
                                          fontSize: scale.getScaledFont(8)),
                                      textScaleFactor:
                                          ScaleSize.textScaleFactor(context),
                                    )
                                  ],
                                ),
                                SizedBox(
                                  height: scale.getScaledHeight(15),
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      children: [
                                        Container(
                                          margin: scale.getMargin(right: 9),
                                          height: scale.getScaledHeight(20),
                                          width: scale.getScaledWidth(20),
                                          decoration: BoxDecoration(
                                              color: LightTheme.chkBox,
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(scale
                                                      .getScaledHeight(3)))),
                                        ),
                                        Text(
                                          "All Categories",
                                          style: TextStyle(
                                              color: LightTheme.darkBlack,
                                              fontSize: scale.getScaledFont(8)),
                                          textScaleFactor:
                                              ScaleSize.textScaleFactor(
                                                  context),
                                        ),
                                      ],
                                    ),
                                    Text(
                                      "5",
                                      style: TextStyle(
                                          color: LightTheme.greytext,
                                          fontSize: scale.getScaledFont(8)),
                                      textScaleFactor:
                                          ScaleSize.textScaleFactor(context),
                                    )
                                  ],
                                ),
                                SizedBox(
                                  height: scale.getScaledHeight(15),
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      children: [
                                        Container(
                                          margin: scale.getMargin(right: 9),
                                          height: scale.getScaledHeight(20),
                                          width: scale.getScaledWidth(20),
                                          decoration: BoxDecoration(
                                              color: LightTheme.chkBox,
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(scale
                                                      .getScaledHeight(3)))),
                                        ),
                                        Text(
                                          "Shoes",
                                          style: TextStyle(
                                              color: LightTheme.darkBlack,
                                              fontSize: scale.getScaledFont(8)),
                                          textScaleFactor:
                                              ScaleSize.textScaleFactor(
                                                  context),
                                        ),
                                      ],
                                    ),
                                    Text(
                                      "5",
                                      style: TextStyle(
                                          color: LightTheme.greytext,
                                          fontSize: scale.getScaledFont(8)),
                                      textScaleFactor:
                                          ScaleSize.textScaleFactor(context),
                                    )
                                  ],
                                ),
                                SizedBox(
                                  height: scale.getScaledHeight(15),
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      children: [
                                        Container(
                                          margin: scale.getMargin(right: 9),
                                          height: scale.getScaledHeight(20),
                                          width: scale.getScaledWidth(20),
                                          decoration: BoxDecoration(
                                              color: LightTheme.chkBox,
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(scale
                                                      .getScaledHeight(3)))),
                                        ),
                                        Text(
                                          "Shirt",
                                          style: TextStyle(
                                              color: LightTheme.darkBlack,
                                              fontSize: scale.getScaledFont(8)),
                                          textScaleFactor:
                                              ScaleSize.textScaleFactor(
                                                  context),
                                        ),
                                      ],
                                    ),
                                    Text(
                                      "5",
                                      style: TextStyle(
                                          color: LightTheme.greytext,
                                          fontSize: scale.getScaledFont(8)),
                                      textScaleFactor:
                                          ScaleSize.textScaleFactor(context),
                                    )
                                  ],
                                ),
                                SizedBox(
                                  height: scale.getScaledHeight(15),
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      children: [
                                        Container(
                                          margin: scale.getMargin(right: 9),
                                          height: scale.getScaledHeight(20),
                                          width: scale.getScaledWidth(20),
                                          decoration: BoxDecoration(
                                              color: LightTheme.chkBox,
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(scale
                                                      .getScaledHeight(3)))),
                                        ),
                                        Text(
                                          "Polo",
                                          style: TextStyle(
                                              color: LightTheme.darkBlack,
                                              fontSize: scale.getScaledFont(8)),
                                          textScaleFactor:
                                              ScaleSize.textScaleFactor(
                                                  context),
                                        ),
                                      ],
                                    ),
                                    Text(
                                      "5",
                                      style: TextStyle(
                                          color: LightTheme.greytext,
                                          fontSize: scale.getScaledFont(8)),
                                      textScaleFactor:
                                          ScaleSize.textScaleFactor(context),
                                    )
                                  ],
                                ),
                                SizedBox(
                                  height: scale.getScaledHeight(15),
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      children: [
                                        Container(
                                          margin: scale.getMargin(right: 9),
                                          height: scale.getScaledHeight(20),
                                          width: scale.getScaledWidth(20),
                                          decoration: BoxDecoration(
                                              color: LightTheme.chkBox,
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(scale
                                                      .getScaledHeight(3)))),
                                        ),
                                        Text(
                                          "T-shirt",
                                          style: TextStyle(
                                              color: LightTheme.darkBlack,
                                              fontSize: scale.getScaledFont(8)),
                                          textScaleFactor:
                                              ScaleSize.textScaleFactor(
                                                  context),
                                        ),
                                      ],
                                    ),
                                    Text(
                                      "5",
                                      style: TextStyle(
                                          color: LightTheme.greytext,
                                          fontSize: scale.getScaledFont(8)),
                                      textScaleFactor:
                                          ScaleSize.textScaleFactor(context),
                                    )
                                  ],
                                ),
                                SizedBox(
                                  height: scale.getScaledHeight(15),
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      children: [
                                        Container(
                                          margin: scale.getMargin(right: 9),
                                          height: scale.getScaledHeight(20),
                                          width: scale.getScaledWidth(20),
                                          decoration: BoxDecoration(
                                              color: LightTheme.chkBox,
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(scale
                                                      .getScaledHeight(3)))),
                                        ),
                                        Text(
                                          "Joggers",
                                          style: TextStyle(
                                              color: LightTheme.darkBlack,
                                              fontSize: scale.getScaledFont(8)),
                                          textScaleFactor:
                                              ScaleSize.textScaleFactor(
                                                  context),
                                        ),
                                      ],
                                    ),
                                    Text(
                                      "5",
                                      style: TextStyle(
                                          color: LightTheme.greytext,
                                          fontSize: scale.getScaledFont(8)),
                                      textScaleFactor:
                                          ScaleSize.textScaleFactor(context),
                                    )
                                  ],
                                )
                              ],
                            ),
                            Padding(
                              padding: scale.getPadding(vertical: 15),
                              child: Divider(),
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Size",
                                  style: TextStyle(
                                      color: LightTheme.bluetext,
                                      fontWeight: FontWeight.bold,
                                      fontSize: scale.getScaledFont(8)),
                                  textScaleFactor:
                                      ScaleSize.textScaleFactor(context),
                                ),
                                SizedBox(
                                  height: scale.getScaledHeight(8),
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "0 Selected",
                                      style: TextStyle(
                                          color: LightTheme.greytext,
                                          fontWeight: FontWeight.bold,
                                          fontSize: scale.getScaledFont(8)),
                                      textScaleFactor:
                                          ScaleSize.textScaleFactor(context),
                                    ),
                                    Text(
                                      "Reset",
                                      style: TextStyle(
                                          color: LightTheme.greytext,
                                          fontSize: scale.getScaledFont(8)),
                                      textScaleFactor:
                                          ScaleSize.textScaleFactor(context),
                                    )
                                  ],
                                ),
                                SizedBox(
                                  height: scale.getScaledHeight(15),
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      children: [
                                        Container(
                                          margin: scale.getMargin(right: 9),
                                          height: scale.getScaledHeight(20),
                                          width: scale.getScaledWidth(20),
                                          decoration: BoxDecoration(
                                              color: LightTheme.chkBox,
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(scale
                                                      .getScaledHeight(3)))),
                                        ),
                                        Text(
                                          "M",
                                          style: TextStyle(
                                              color: LightTheme.darkBlack,
                                              fontSize: scale.getScaledFont(8)),
                                          textScaleFactor:
                                              ScaleSize.textScaleFactor(
                                                  context),
                                        ),
                                      ],
                                    ),
                                    Text(
                                      "5",
                                      style: TextStyle(
                                          color: LightTheme.greytext,
                                          fontSize: scale.getScaledFont(8)),
                                      textScaleFactor:
                                          ScaleSize.textScaleFactor(context),
                                    )
                                  ],
                                ),
                                SizedBox(
                                  height: scale.getScaledHeight(15),
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      children: [
                                        Container(
                                          margin: scale.getMargin(right: 9),
                                          height: scale.getScaledHeight(20),
                                          width: scale.getScaledWidth(20),
                                          decoration: BoxDecoration(
                                              color: LightTheme.chkBox,
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(scale
                                                      .getScaledHeight(3)))),
                                        ),
                                        Text(
                                          "S",
                                          style: TextStyle(
                                              color: LightTheme.darkBlack,
                                              fontSize: scale.getScaledFont(8)),
                                          textScaleFactor:
                                              ScaleSize.textScaleFactor(
                                                  context),
                                        ),
                                      ],
                                    ),
                                    Text(
                                      "5",
                                      style: TextStyle(
                                          color: LightTheme.greytext,
                                          fontSize: scale.getScaledFont(8)),
                                      textScaleFactor:
                                          ScaleSize.textScaleFactor(context),
                                    )
                                  ],
                                ),
                                SizedBox(
                                  height: scale.getScaledHeight(15),
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      children: [
                                        Container(
                                          margin: scale.getMargin(right: 9),
                                          height: scale.getScaledHeight(20),
                                          width: scale.getScaledWidth(20),
                                          decoration: BoxDecoration(
                                              color: LightTheme.chkBox,
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(scale
                                                      .getScaledHeight(3)))),
                                        ),
                                        Text(
                                          "L",
                                          style: TextStyle(
                                              color: LightTheme.darkBlack,
                                              fontSize: scale.getScaledFont(8)),
                                          textScaleFactor:
                                              ScaleSize.textScaleFactor(
                                                  context),
                                        ),
                                      ],
                                    ),
                                    Text(
                                      "5",
                                      style: TextStyle(
                                          color: LightTheme.greytext,
                                          fontSize: scale.getScaledFont(8)),
                                      textScaleFactor:
                                          ScaleSize.textScaleFactor(context),
                                    )
                                  ],
                                ),
                                SizedBox(
                                  height: scale.getScaledHeight(15),
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      children: [
                                        Container(
                                          margin: scale.getMargin(right: 9),
                                          height: scale.getScaledHeight(20),
                                          width: scale.getScaledWidth(20),
                                          decoration: BoxDecoration(
                                              color: LightTheme.chkBox,
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(scale
                                                      .getScaledHeight(3)))),
                                        ),
                                        Text(
                                          "XL",
                                          style: TextStyle(
                                              color: LightTheme.darkBlack,
                                              fontSize: scale.getScaledFont(8)),
                                          textScaleFactor:
                                              ScaleSize.textScaleFactor(
                                                  context),
                                        ),
                                      ],
                                    ),
                                    Text(
                                      "5",
                                      style: TextStyle(
                                          color: LightTheme.greytext,
                                          fontSize: scale.getScaledFont(8)),
                                      textScaleFactor:
                                          ScaleSize.textScaleFactor(context),
                                    )
                                  ],
                                ),
                              ],
                            )
                          ],
                        ),
                      )),
                  Expanded(
                    flex: 8,
                    child: Container(
                      padding: scale.getPadding(right: 40, top: 40),
                      child: GridView.builder(
                        itemCount: 20, // Number of items in the grid
                        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                          maxCrossAxisExtent: 350,
                          // Maximum width of each item
                          mainAxisSpacing: scale.getScaledWidth(
                              18), // Spacing between items along the main axis
                          crossAxisSpacing: scale.getScaledWidth(
                              18), //  // Spacing between items along the cross axis
                          childAspectRatio:
                              1, // Aspect ratio of each item (width/height)
                        ),
                        itemBuilder: (BuildContext context, int index) {
                          return GridTile(
                            child: Container(
                              child: Text(
                                "data",
                                style: TextStyle(fontSize: 30),
                                textAlign: TextAlign.center,
                                textScaleFactor:
                                    ScaleSize.textScaleFactor(context),
                              ),
                              decoration: BoxDecoration(
                                  border:
                                      Border.all(color: LightTheme.borderColor),
                                  borderRadius: BorderRadius.all(
                                      Radius.circular(
                                          scale.getScaledHeight(17)))),
                            ),
                          );
                        },
                      ),
                    ),
                  )
                ],
              ),
            ))
          ],
        ),
      ),
    );
  }

  Widget cstmBtn() {
    return Container();
  }
}
