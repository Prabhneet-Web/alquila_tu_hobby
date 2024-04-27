import 'package:alquila_tu_hobby/core/utils/app_style/app_style.dart';
import 'package:alquila_tu_hobby/core/utils/color_constants/color_constants.dart';
import 'package:alquila_tu_hobby/core/utils/scaling_util/scaling_utility.dart';
import 'package:alquila_tu_hobby/widgets/common_appbar.dart';
import 'package:clean_calendar/clean_calendar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:just_the_tooltip/just_the_tooltip.dart';

class addProductScreen extends StatelessWidget {
  const addProductScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final scale = Get.find<ScalingUtility>()..setCurrentDeviceSize(context);
    return Scaffold(
        body: SizedBox(
            height: scale.fh,
            width: scale.fw,
            child: Column(children: [
              const CommonAppBar(),
              Expanded(
                  child: Container(
                padding:
                    scale.getPadding(left: (scale.fullWidth/scale.fullHeight) * 24, right: (scale.fullWidth/scale.fullHeight) * 24, top: (scale.fullWidth/scale.fullHeight) * 10, bottom: (scale.fullWidth/scale.fullHeight) * 10),
                child: Center(
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Text(
                            "Add Product",
                            style: AppStyle.txtNunitoBold20.copyWith(
                                color: LightTheme.darkBlack,
                                fontSize: scale.getScaledFont(16)),
                            textScaleFactor: ScaleSize.textScaleFactor(context),
                          ),
                          const Spacer()
                        ],
                      ),
                      Expanded(
                        child: Container(
                          padding:
                              scale.getPadding(left: (scale.fullWidth/scale.fullHeight) * 60, right: (scale.fullWidth/scale.fullHeight) * 60),
                          margin: scale.getMargin(
                              left: (scale.fullWidth/scale.fullHeight) * 24, right: (scale.fullWidth/scale.fullHeight) * 24, top: (scale.fullWidth/scale.fullHeight) * 24, bottom: (scale.fullWidth/scale.fullHeight) * 24),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(
                                  Radius.circular(scale.getScaledFont(10))),
                              border:
                                  Border.all(color: LightTheme.greylight10)),
                          child: Center(
                            child: SingleChildScrollView(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Container(
                                    decoration: const BoxDecoration(
                                        color: LightTheme.grey1,
                                        shape: BoxShape.circle),
                                    padding: scale.getPadding(all: (scale.fullWidth/scale.fullHeight) * 14),
                                    child: Icon(
                                      Icons.camera_alt_outlined,
                                      size: scale.getScaledFont(30),
                                    ),
                                  ),
                                  SizedBox(
                                    height: scale.fullHeight * 0.01,
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
                                    height: scale.fullHeight * 0.04,
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
                                              height: scale.fullHeight * 0.01,
                                            ),
                                            AspectRatio(
                                              aspectRatio: 12,
                                              child: TextFormField(
                                                decoration: InputDecoration(
                                                  filled: true,
                                                  fillColor: LightTheme.grey2,
                                                  enabledBorder: const OutlineInputBorder(
                                                      borderSide: BorderSide(
                                                          color: LightTheme
                                                              .greylight10)),
                                                  focusedBorder: const OutlineInputBorder(
                                                      borderSide: BorderSide(
                                                          color: LightTheme
                                                              .greylight10)),
                                                  border: const OutlineInputBorder(
                                                      borderSide: BorderSide(
                                                          color: LightTheme
                                                              .greylight10)),
                                                  hintText: 'Enter product name',
                                                  hintStyle: TextStyle(fontSize: (scale.fullWidth/scale.fullHeight) * 7)
                                                ),
                                                // Add onChanged to update product name variable
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      SizedBox(
                                        width: scale.fullWidth * 0.04,
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
                                              height: scale.fullHeight * 0.01,
                                            ),
                                            AspectRatio(
                                              aspectRatio: 12,
                                              child: TextFormField(
                                                decoration: InputDecoration(
                                                  filled: true,
                                                  fillColor: LightTheme.grey2,
                                                  enabledBorder: const OutlineInputBorder(
                                                      borderSide: BorderSide(
                                                          color: LightTheme
                                                              .greylight10)),
                                                  focusedBorder: const OutlineInputBorder(
                                                      borderSide: BorderSide(
                                                          color: LightTheme
                                                              .greylight10)),
                                                  border: const OutlineInputBorder(
                                                      borderSide: BorderSide(
                                                          color: LightTheme
                                                              .greylight10)),
                                                  hintText: 'Enter product name', hintStyle: TextStyle(fontSize: (scale.fullWidth/scale.fullHeight) * 7)
                                                ),
                                                // Add onChanged to update product name variable
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: scale.fullHeight * 0.05,
                                  ),
                                  // Category Dropdown
                                  Row(children: [
                                    Expanded(
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            "Select category",
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
                                            height: scale.fullHeight * 0.01,
                                          ),
                                          AspectRatio(
                                            aspectRatio: 12,
                                            child: DropdownButtonFormField(
                                              decoration: InputDecoration(
                                                filled: true,
                                                fillColor: LightTheme.grey2,
                                                enabledBorder: const OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                        color: LightTheme
                                                            .greylight10)),
                                                focusedBorder: const OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                        color: LightTheme
                                                            .greylight10)),
                                                border: const OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                        color: LightTheme
                                                            .greylight10)),
                                                hintText: 'Enter product name',
                                                hintStyle: TextStyle(fontSize: (scale.fullWidth/scale.fullHeight) * 7)
                              
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
                                          ),
                                        ],
                                      ),
                                    ),
                                    SizedBox(
                                      width: scale.fullWidth * 0.04,
                                    ),
                              
                                    // Availability Input Field (with calendar icon)
                                    Expanded(
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            "Availability",
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
                                            height: scale.fullHeight * 0.01,
                                          ),
                                          AspectRatio(
                                            aspectRatio: 12,
                                            child: TextFormField(
                                              decoration: InputDecoration(
                                                filled: true,
                                                fillColor: LightTheme.grey2,
                                                enabledBorder: const OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                        color: LightTheme
                                                            .greylight10)),
                                                focusedBorder: const OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                        color: LightTheme
                                                            .greylight10)),
                                                border: const OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                        color: LightTheme
                                                            .greylight10)),
                                                hintText: 'Choose',
                                                hintStyle: TextStyle(fontSize: (scale.fullWidth/scale.fullHeight) * 7),
                                                suffix: JustTheTooltip(
                                                    borderRadius: BorderRadius.all(
                                                        Radius.circular(
                                                            scale.getScaledFont(17))),
                                                    tailLength: 0,
                                                    margin: scale.getMargin(top: 10),
                                                    isModal: true,
                                                    content: Container(
                                                      margin: scale.getMargin(all: 8),
                                                      height: scale.fullHeight * 0.38,
                                                      width: scale.fullWidth * 0.2,
                                                      child: CleanCalendar(
                                                        leadingTrailingDatesProperties:
                                                        DatesProperties(disable: true),
                                                        headerProperties: HeaderProperties(
                                                            monthYearDecoration:
                                                            MonthYearDecoration()),
                                                        selectedDatesProperties:
                                                        DatesProperties(disable: true),
                                                        streakDatesProperties: DatesProperties(
                                                            datesDecoration:
                                                            DatesDecoration(
                                                                datesBorderRadius: 0,
                                                                datesTextColor:
                                                                LightTheme.white,
                                                                datesBorderColor:
                                                                Colors.transparent,
                                                                datesBackgroundColor:
                                                                LightTheme
                                                                    .darkBlack)),
                                                        generalDatesProperties:
                                                        DatesProperties(
                                                            datesDecoration:
                                                            DatesDecoration(
                                                              datesBorderColor:
                                                              Colors.transparent,
                                                            )),
                                                        datesForStreaks: [
                                                          DateTime(2024, 4, 4),
                                                          DateTime(2022, 8, 6),
                                                          DateTime(2022, 8, 7),
                                                          DateTime(2022, 8, 9),
                                                          DateTime(2022, 8, 10),
                                                          DateTime(2022, 8, 11),
                                                          DateTime(2022, 8, 13),
                                                          DateTime(2022, 8, 20),
                                                          DateTime(2022, 8, 21),
                                                          DateTime(2022, 8, 23),
                                                          DateTime(2022, 8, 24),
                                                        ],
                                                      ),
                                                    ),
                                                    child: const Icon(Icons.calendar_month_outlined))
                                              ),
                                              // Add onChanged to update product name variable
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ]),
                                  SizedBox(height: scale.fullHeight * 0.04),
                                  Container(
                                    height: scale.fullHeight * 0.06,
                                    width: scale.fullWidth * 0.14,
                                    decoration: BoxDecoration(
                                        color: LightTheme.yellowBG,
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(
                                                scale.getScaledHeight(10)))),
                                    child: Center(
                                      child: Text(
                                        "Publish",
                                        style: AppStyle.txtNunitoBold20.copyWith(
                                            fontSize: 9, color: LightTheme.white),
                                        textScaleFactor:
                                            ScaleSize.textScaleFactor(context),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
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
