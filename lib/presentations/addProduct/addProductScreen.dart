import 'package:alquila_tu_hobby/core/utils/app_style/app_style.dart';
import 'package:alquila_tu_hobby/core/utils/color_constants/color_constants.dart';
import 'package:alquila_tu_hobby/core/utils/scaling_util/scaling_utility.dart';
import 'package:alquila_tu_hobby/widgets/comnAppbar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class addProductScreen extends StatelessWidget {
  const addProductScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final scale = Get.find<ScalingUtility>()..setCurrentDeviceSize(context);
    return Scaffold(
        body: Container(
            height: scale.fh,
            width: scale.fw,
            child: Column(children: [
              Appbar(),
              Expanded(
                  child: Container(
                padding:
                    scale.getPadding(left: 60, right: 60, top: 40, bottom: 20),
                child: Center(
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Text(
                            "Add product",
                            style: AppStyle.txtNunitoBold20.copyWith(
                                color: LightTheme.darkBlack,
                                fontSize: scale.getScaledFont(16)),
                            textScaleFactor: ScaleSize.textScaleFactor(context),
                          ),
                          Spacer()
                        ],
                      ),
                      Expanded(
                        child: Container(
                          padding:
                              scale.getPadding(top: 30, left: 100, right: 100),
                          margin: scale.getMargin(
                              left: 70, right: 70, top: 30, bottom: 40),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(
                                  Radius.circular(scale.getScaledFont(10))),
                              border:
                                  Border.all(color: LightTheme.greylight10)),
                          child: Center(
                            child: Column(
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                      color: LightTheme.grey1,
                                      shape: BoxShape.circle),
                                  padding: scale.getPadding(all: 30),
                                  child: Icon(
                                    Icons.camera_alt_outlined,
                                    size: scale.getScaledFont(30),
                                  ),
                                ),
                                SizedBox(
                                  height: scale.getScaledHeight(14),
                                ),
                                Text(
                                  "Upload Product Photo",
                                  style: AppStyle.txtNunitoBold20.copyWith(
                                      color: LightTheme.yellowBG,
                                      fontSize: 9,
                                      fontWeight: FontWeight.bold),
                                  textScaleFactor:
                                      ScaleSize.textScaleFactor(context),
                                ),
                                SizedBox(
                                  height: scale.getScaledHeight(50),
                                ),
                                Row(
                                  children: [
                                    Expanded(
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            "Product Name",
                                            style: AppStyle.txtNunitoBold20
                                                .copyWith(
                                                    color: LightTheme.greytext,
                                                    fontSize: 8,
                                                    fontWeight:
                                                        FontWeight.bold),
                                            textScaleFactor:
                                                ScaleSize.textScaleFactor(
                                                    context),
                                          ),
                                          SizedBox(
                                            height: scale.getScaledHeight(10),
                                          ),
                                          TextFormField(
                                            decoration: InputDecoration(
                                              filled: true,
                                              fillColor: LightTheme.grey2,
                                              enabledBorder: OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                      color: LightTheme
                                                          .greylight10)),
                                              focusedBorder: OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                      color: LightTheme
                                                          .greylight10)),
                                              border: OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                      color: LightTheme
                                                          .greylight10)),
                                              hintText: 'Enter product name',
                                            ),
                                            // Add onChanged to update product name variable
                                          ),
                                        ],
                                      ),
                                    ),
                                    SizedBox(
                                      width: scale.getScaledWidth(60),
                                    ),
                                    // Price Input Field
                                    Expanded(
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            "Price",
                                            style: AppStyle.txtNunitoBold20
                                                .copyWith(
                                                    color: LightTheme.greytext,
                                                    fontSize: 8,
                                                    fontWeight:
                                                        FontWeight.bold),
                                            textScaleFactor:
                                                ScaleSize.textScaleFactor(
                                                    context),
                                          ),
                                          SizedBox(
                                            height: scale.getScaledHeight(10),
                                          ),
                                          TextFormField(
                                            decoration: InputDecoration(
                                              filled: true,
                                              fillColor: LightTheme.grey2,
                                              enabledBorder: OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                      color: LightTheme
                                                          .greylight10)),
                                              focusedBorder: OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                      color: LightTheme
                                                          .greylight10)),
                                              border: OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                      color: LightTheme
                                                          .greylight10)),
                                              hintText: 'Enter product name',
                                            ),
                                            // Add onChanged to update product name variable
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: scale.getScaledHeight(40),
                                ),
                                // Category Dropdown
                                Row(children: [
                                  Expanded(
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Select catagory",
                                          style: AppStyle.txtNunitoBold20
                                              .copyWith(
                                                  color: LightTheme.greytext,
                                                  fontSize: 8,
                                                  fontWeight: FontWeight.bold),
                                          textScaleFactor:
                                              ScaleSize.textScaleFactor(
                                                  context),
                                        ),
                                        SizedBox(
                                          height: scale.getScaledHeight(10),
                                        ),
                                        DropdownButtonFormField(
                                          decoration: InputDecoration(
                                            filled: true,
                                            fillColor: LightTheme.grey2,
                                            enabledBorder: OutlineInputBorder(
                                                borderSide: BorderSide(
                                                    color: LightTheme
                                                        .greylight10)),
                                            focusedBorder: OutlineInputBorder(
                                                borderSide: BorderSide(
                                                    color: LightTheme
                                                        .greylight10)),
                                            border: OutlineInputBorder(
                                                borderSide: BorderSide(
                                                    color: LightTheme
                                                        .greylight10)),
                                            hintText: 'Enter product name',
                                          ),
                                          value:
                                              'Shoes', // Set initial value (replace with your data)
                                          items: [
                                            'Shoes',
                                            'Electronics',
                                            'Clothing', /* Add more options */
                                          ]
                                              .map((category) =>
                                                  DropdownMenuItem(
                                                    value: category,
                                                    child: Text(category),
                                                  ))
                                              .toList(),
                                          onChanged: (value) {
                                            // Update category variable
                                          },
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    width: scale.getScaledWidth(60),
                                  ),

                                  // Availability Input Field (with calendar icon)
                                  Expanded(
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Price",
                                          style: AppStyle.txtNunitoBold20
                                              .copyWith(
                                                  color: LightTheme.greytext,
                                                  fontSize: 8,
                                                  fontWeight: FontWeight.bold),
                                          textScaleFactor:
                                              ScaleSize.textScaleFactor(
                                                  context),
                                        ),
                                        SizedBox(
                                          height: scale.getScaledHeight(10),
                                        ),
                                        TextFormField(
                                          decoration: InputDecoration(
                                            filled: true,
                                            fillColor: LightTheme.grey2,
                                            enabledBorder: OutlineInputBorder(
                                                borderSide: BorderSide(
                                                    color: LightTheme
                                                        .greylight10)),
                                            focusedBorder: OutlineInputBorder(
                                                borderSide: BorderSide(
                                                    color: LightTheme
                                                        .greylight10)),
                                            border: OutlineInputBorder(
                                                borderSide: BorderSide(
                                                    color: LightTheme
                                                        .greylight10)),
                                            hintText: 'Enter product name',
                                          ),
                                          // Add onChanged to update product name variable
                                        ),
                                      ],
                                    ),
                                  ),
                                ]),
                                SizedBox(height: scale.getScaledHeight(40)),

                                // Publish Button
                                Container(
                                  decoration: BoxDecoration(
                                      color: LightTheme.yellowBG,
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(
                                              scale.getScaledHeight(10)))),
                                  padding: scale.getPadding(
                                      horizontal: 100, vertical: 16),
                                  child: Text(
                                    "Publish",
                                    style: AppStyle.txtNunitoBold20.copyWith(
                                        fontSize: 9, color: LightTheme.white),
                                    textScaleFactor:
                                        ScaleSize.textScaleFactor(context),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ))
            ])));
  }
}
