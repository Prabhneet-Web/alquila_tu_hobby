import 'package:alquila_tu_hobby/core/utils/app_style/app_style.dart';
import 'package:alquila_tu_hobby/core/utils/color_constants/color_constants.dart';
import 'package:alquila_tu_hobby/core/utils/scaling_util/scaling_utility.dart';
import 'package:alquila_tu_hobby/widgets/comnAppbar.dart';
import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:clean_calendar/clean_calendar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:just_the_tooltip/just_the_tooltip.dart';

class productScreen extends StatelessWidget {
  const productScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final scale = Get.find<ScalingUtility>()..setCurrentDeviceSize(context);
    return Scaffold(
        body: Container(
            height: scale.fh,
            width: scale.fw,
            child: Column(children: [
              Appbar(),
              Container(
                height: scale.getScaledHeight(50),
                width: scale.fw,
                //color: const Color.fromARGB(255, 103, 75, 73),
              ),
              Expanded(
                child: SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Column(
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            height: scale.fh / 1.4,
                            width: scale.fh / 1.6,
                            margin: scale.getMargin(left: 40, right: 40),
                            child: Column(
                              children: [
                                Expanded(
                                  flex: 7,
                                  child: Container(
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(
                                                scale.getScaledHeight(10))),
                                        border: Border.all(
                                            color: LightTheme.greylight),
                                        image: DecorationImage(
                                            image: AssetImage(
                                                "assets/images/sh1.png"),
                                            fit: BoxFit.fill)),
                                  ),
                                ),
                                Expanded(
                                  flex: 2,
                                  child: Row(
                                    children: [
                                      Expanded(
                                        child: Container(
                                          margin: scale.getMargin(
                                            vertical: 10,
                                          ),
                                          decoration: BoxDecoration(
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(scale
                                                      .getScaledHeight(10))),
                                              border: Border.all(
                                                  color: LightTheme.greylight),
                                              image: DecorationImage(
                                                  image: AssetImage(
                                                      "assets/images/sh1.png"))),
                                        ),
                                      ),
                                      SizedBox(
                                        width: scale.getScaledHeight(15),
                                      ),
                                      Expanded(
                                        child: Container(
                                          margin: scale.getMargin(
                                            vertical: 10,
                                          ),
                                          decoration: BoxDecoration(
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(scale
                                                      .getScaledHeight(10))),
                                              border: Border.all(
                                                  color: LightTheme.greylight),
                                              image: DecorationImage(
                                                  image: AssetImage(
                                                      "assets/images/sh1.png"))),
                                        ),
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                          Container(
                            height: scale.fh / 1.4,
                            width: scale.fh / 1.6,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Hoka Sneakers",
                                  style: AppStyle.txtNunitoBold20.copyWith(
                                      color: LightTheme.bluetext,
                                      fontSize: scale.getScaledFont(18)),
                                  textScaleFactor:
                                      ScaleSize.textScaleFactor(context),
                                ),
                                SizedBox(
                                  height: scale.getScaledHeight(10),
                                ),
                                Row(
                                  children: [
                                    Text(
                                      "&11 /",
                                      style: AppStyle.txtNunitoBold20.copyWith(
                                          color: LightTheme.greytext,
                                          fontSize: scale.getScaledFont(17)),
                                      textScaleFactor:
                                          ScaleSize.textScaleFactor(context),
                                    ),
                                    Text(
                                      " Per day",
                                      style: AppStyle.txtNunitoBold20.copyWith(
                                          fontWeight: FontWeight.w400,
                                          color: LightTheme.greytext,
                                          fontSize: scale.getScaledFont(17)),
                                      textScaleFactor:
                                          ScaleSize.textScaleFactor(context),
                                    )
                                  ],
                                ),
                                SizedBox(
                                  height: scale.getScaledHeight(10),
                                ),
                                Row(
                                  children: [
                                    Row(
                                      children: [
                                        for (int i = 0; i < 5; i++)
                                          Container(
                                            margin: scale.getMargin(right: 3),
                                            height: scale.getScaledHeight(20),
                                            width: scale.getScaledHeight(20),
                                            decoration: BoxDecoration(
                                                image: DecorationImage(
                                                    image: AssetImage(
                                                        "assets/logos/star.png"))),
                                          )
                                      ],
                                    ),
                                    SizedBox(
                                      width: scale.getScaledWidth(16),
                                    ),
                                    Text(
                                      "No review yet",
                                      style: AppStyle.txtNunitoBold20.copyWith(
                                          fontWeight: FontWeight.w400,
                                          color: LightTheme.greytext,
                                          fontSize: scale.getScaledFont(8)),
                                      textScaleFactor:
                                          ScaleSize.textScaleFactor(context),
                                    )
                                  ],
                                ),
                                SizedBox(
                                  height: scale.getScaledHeight(16),
                                ),
                                Row(
                                  children: [
                                    Text(
                                      "Availability:",
                                      style: AppStyle.txtNunitoBold20.copyWith(
                                          fontWeight: FontWeight.w400,
                                          color: LightTheme.greytext,
                                          fontSize: scale.getScaledFont(9)),
                                      textScaleFactor:
                                          ScaleSize.textScaleFactor(context),
                                    ),
                                    SizedBox(
                                      width: scale.getScaledHeight(10),
                                    ),
                                    Text(
                                      "View in calender",
                                      style: AppStyle.txtNunitoBold20.copyWith(
                                          fontWeight: FontWeight.w400,
                                          color: LightTheme.green,
                                          fontSize: scale.getScaledFont(8)),
                                      textScaleFactor:
                                          ScaleSize.textScaleFactor(context),
                                    ),
                                    SizedBox(
                                      width: scale.getScaledWidth(16),
                                    ),
                                    JustTheTooltip(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(
                                                scale.getScaledFont(17))),
                                        tailLength: 0,
                                        margin: scale.getMargin(
                                            left: 1100, top: 10),
                                        isModal: true,
                                        child:
                                            Icon(Icons.calendar_month_outlined),
                                        content: Container(
                                          margin: scale.getMargin(all: 8),
                                          height: scale.getScaledHeight(250),
                                          width: scale.getScaledWidth(300),
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
                                        )),
                                    // IconButton(
                                    //     onPressed: () {

                                    //     },
                                    //     icon:
                                    //         Icon(Icons.calendar_month_outlined))
                                  ],
                                ),
                                SizedBox(
                                  height: scale.getScaledHeight(16),
                                ),
                                Text(
                                  "Hurry up! only 34 product left in stock !",
                                  style: AppStyle.txtNunitoBold20.copyWith(
                                      fontWeight: FontWeight.w400,
                                      color: LightTheme.greytext,
                                      fontSize: scale.getScaledFont(7)),
                                  textScaleFactor:
                                      ScaleSize.textScaleFactor(context),
                                ),
                                SizedBox(
                                  height: scale.getScaledHeight(30),
                                ),
                                Row(
                                  children: [
                                    Text(
                                      "Colors:",
                                      style: AppStyle.txtNunitoBold20.copyWith(
                                          fontWeight: FontWeight.bold,
                                          fontSize: scale.getScaledFont(10)),
                                      textScaleFactor:
                                          ScaleSize.textScaleFactor(context),
                                    ),
                                    SizedBox(
                                      width: scale.getScaledWidth(10),
                                    ),
                                    Container(
                                      height: scale.getScaledHeight(17),
                                      width: scale.getScaledHeight(17),
                                      decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          border: Border.all()),
                                      child: Container(
                                        margin: scale.getMargin(all: 3),
                                        decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                            color: LightTheme.yellowBG),
                                      ),
                                    )
                                  ],
                                ),
                                SizedBox(
                                  height: scale.getScaledHeight(16),
                                ),
                                Row(
                                  children: [
                                    Text(
                                      "Size:",
                                      style: AppStyle.txtNunitoBold20.copyWith(
                                          fontWeight: FontWeight.bold,
                                          fontSize: scale.getScaledFont(10)),
                                      textScaleFactor:
                                          ScaleSize.textScaleFactor(context),
                                    ),
                                    SizedBox(
                                      width: scale.getScaledWidth(10),
                                    ),
                                    for (int i = 0; i < 4; i++)
                                      Container(
                                        margin: scale.getMargin(right: 10),
                                        height: scale.getScaledHeight(25),
                                        width: scale.getScaledWidth(37),
                                        decoration:
                                            BoxDecoration(border: Border.all()),
                                        child: Container(
                                          decoration: BoxDecoration(
                                              color: LightTheme.greylight10),
                                        ),
                                      )
                                  ],
                                ),
                                SizedBox(
                                  height: scale.getScaledHeight(16),
                                ),
                                Row(
                                  children: [
                                    Text(
                                      "Size:",
                                      style: AppStyle.txtNunitoBold20.copyWith(
                                          fontWeight: FontWeight.bold,
                                          fontSize: scale.getScaledFont(10)),
                                      textScaleFactor:
                                          ScaleSize.textScaleFactor(context),
                                    ),
                                    SizedBox(
                                      width: scale.getScaledWidth(10),
                                    ),
                                    Container(
                                      margin: scale.getMargin(right: 10),
                                      height: scale.getScaledHeight(30),
                                      width: scale.getScaledWidth(130),
                                      decoration: BoxDecoration(),
                                      child: Row(
                                        children: [
                                          Expanded(
                                            flex: 2,
                                            child: Container(
                                              decoration: BoxDecoration(
                                                  color: LightTheme.greylight10,
                                                  border: Border.all(
                                                      color: LightTheme
                                                          .greylight)),
                                              child: Center(
                                                child: Icon(Icons.add),
                                              ),
                                            ),
                                          ),
                                          Expanded(
                                            flex: 4,
                                            child: Container(
                                              decoration: BoxDecoration(
                                                  color: LightTheme.greylight10,
                                                  border: Border.all(
                                                      color: LightTheme
                                                          .greylight)),
                                            ),
                                          ),
                                          Expanded(
                                            flex: 2,
                                            child: Container(
                                              decoration: BoxDecoration(
                                                  color: LightTheme.greylight10,
                                                  border: Border.all(
                                                      color: LightTheme
                                                          .greylight)),
                                              child: Center(
                                                child: Icon(Icons.remove),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                                SizedBox(
                                  height: scale.getScaledHeight(20),
                                ),
                                Row(
                                  children: [
                                    InkWell(
                                      onTap: () {
                                        AwesomeDialog(
                                          width: scale.fw / 2.3,
                                          context: context,
                                          dialogType: DialogType.noHeader,
                                          animType: AnimType.rightSlide,
                                          body: Container(
                                            height: scale.fh / 1.2,
                                            child: Column(
                                              children: [
                                                Padding(
                                                  padding: scale.getPadding(
                                                      horizontal: 18),
                                                  child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    children: [
                                                      Icon(
                                                        Icons.close,
                                                        size: scale
                                                            .getScaledFont(40),
                                                      ),
                                                      Text(
                                                        "Rent it now !",
                                                        style: AppStyle
                                                            .txtNunitoBold20
                                                            .copyWith(
                                                          fontSize: 14,
                                                        ),
                                                        textScaleFactor:
                                                            ScaleSize
                                                                .textScaleFactor(
                                                                    context),
                                                      ),
                                                      SizedBox(
                                                        width: scale
                                                            .getScaledWidth(10),
                                                      )
                                                    ],
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ).show();
                                      },
                                      child: Container(
                                        decoration: BoxDecoration(
                                            color: LightTheme.yellowBG,
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(scale
                                                    .getScaledHeight(24)))),
                                        height: scale.getScaledHeight(60),
                                        width: scale.getScaledWidth(200),
                                        child: Center(
                                          child: Text(
                                            "Rent it now",
                                            style:
                                                AppStyle.txtNunitobold14White,
                                            textScaleFactor:
                                                ScaleSize.textScaleFactor(
                                                    context),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      margin: scale.getMargin(left: 20),
                                      decoration: BoxDecoration(
                                        image: DecorationImage(
                                            image: AssetImage(
                                                "assets/logos/heart.png")),
                                        shape: BoxShape.circle,
                                        color: LightTheme.greylight10,
                                      ),
                                      height: scale.getScaledHeight(60),
                                      width: scale.getScaledHeight(60),
                                      child: Center(),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: scale.getScaledHeight(20),
                                ),
                                Row(
                                  children: [
                                    Text(
                                      "Sku:",
                                      style: AppStyle.txtNunitoBold20.copyWith(
                                          fontWeight: FontWeight.w400,
                                          fontSize: scale.getScaledFont(10)),
                                      textScaleFactor:
                                          ScaleSize.textScaleFactor(context),
                                    ),
                                    SizedBox(
                                      width: scale.getScaledWidth(10),
                                    ),
                                    Text(
                                      "01133-9-9",
                                      style: AppStyle.txtNunitoBold20.copyWith(
                                          fontWeight: FontWeight.w100,
                                          fontSize: scale.getScaledFont(9)),
                                      textScaleFactor:
                                          ScaleSize.textScaleFactor(context),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: scale.getScaledHeight(16),
                                ),
                                Row(
                                  children: [
                                    Text(
                                      "Category:",
                                      style: AppStyle.txtNunitoBold20.copyWith(
                                          fontWeight: FontWeight.bold,
                                          fontSize: scale.getScaledFont(10)),
                                      textScaleFactor:
                                          ScaleSize.textScaleFactor(context),
                                    ),
                                    SizedBox(
                                      width: scale.getScaledWidth(10),
                                    ),
                                    Text(
                                      "20% off, 49% off Alex  remoteAlex remote",
                                      style: AppStyle.txtNunitoBold20.copyWith(
                                          fontWeight: FontWeight.w100,
                                          fontSize: scale.getScaledFont(7)),
                                      textScaleFactor:
                                          ScaleSize.textScaleFactor(context),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                      Container(
                        margin: scale.getMargin(vertical: 50),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                  border: Border.all(),
                                  borderRadius: BorderRadius.all(
                                      Radius.circular(
                                          scale.getScaledHeight(14)))),
                              height: scale.getScaledHeight(50),
                              width: scale.getScaledWidth(160),
                              child: Center(
                                child: Text(
                                  "Description",
                                  style: AppStyle.txtNunitobold14White.copyWith(
                                      color: Colors.black, fontSize: 11),
                                  textScaleFactor:
                                      ScaleSize.textScaleFactor(context),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: scale.getScaledWidth(20),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                  color: LightTheme.bluetext,
                                  borderRadius: BorderRadius.all(
                                      Radius.circular(
                                          scale.getScaledHeight(14)))),
                              height: scale.getScaledHeight(50),
                              width: scale.getScaledWidth(160),
                              child: Center(
                                child: Text(
                                  "Message",
                                  style: AppStyle.txtNunitobold14White
                                      .copyWith(fontSize: 11),
                                  textScaleFactor:
                                      ScaleSize.textScaleFactor(context),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        padding: scale.getPadding(horizontal: 30),
                        margin:
                            scale.getMargin(left: 40, right: 40, bottom: 40),
                        height: scale.getScaledHeight(120),
                        width: (scale.fh / 1.6) * 2,
                        decoration: BoxDecoration(
                            border: Border.all(color: LightTheme.greylight),
                            borderRadius: BorderRadius.all(
                                Radius.circular(scale.getScaledHeight(20)))),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Customer reviews",
                              style: AppStyle.txtNunitoBold20.copyWith(
                                  fontSize: 14, color: LightTheme.bluetext),
                              textScaleFactor:
                                  ScaleSize.textScaleFactor(context),
                            ),
                            Padding(
                              padding: scale.getPadding(vertical: 10),
                              child: Text(
                                "No reviews yet",
                                style: TextStyle(
                                    color: LightTheme.greytext,
                                    fontSize: scale.getScaledFont(10)),
                                textScaleFactor:
                                    ScaleSize.textScaleFactor(context),
                              ),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                color: LightTheme.bluetext,
                              ),
                              padding:
                                  scale.getPadding(horizontal: 7, vertical: 9),
                              height: scale.getScaledHeight(35),
                              // width: scale.getScaledWidth(140),
                              child: Text(
                                "Write a review",
                                style: AppStyle.txtNunitobold14White.copyWith(
                                    decoration: TextDecoration.underline,
                                    decorationColor: LightTheme.white,
                                    fontSize: 10),
                                textScaleFactor:
                                    ScaleSize.textScaleFactor(context),
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ])));
  }
}
              // Expanded(
              //   child: Padding(
              //     padding: scale.getPadding(left: 20),
              //     child: Column(
              //       children: [
              //         Expanded(
              //           flex: 6,
              //           child: Column(
              //             children: [
              //               Expanded(
              //                   child: Container(
              //                       child: Row(
              //                 crossAxisAlignment: CrossAxisAlignment.start,
              //                 mainAxisAlignment: MainAxisAlignment.center,
              //                 children: [
              //                   Container(
              //                     height: scale.fh,
              //                     width: scale.fw / 2.5,
              //                     margin: scale.getMargin(left: 40, right: 20),
              //                     child: Column(
              //                       children: [
              //                         Expanded(
              //                           flex: 3,
              //                           child: Container(
              //                             decoration: BoxDecoration(
              //                                 borderRadius: BorderRadius.all(
              //                                     Radius.circular(scale
              //                                         .getScaledHeight(10))),
              //                                 border: Border.all(
              //                                     color: LightTheme.greylight),
              //                                 image: DecorationImage(
              //                                     image: AssetImage(
              //                                         "assets/images/sh1.png"),
              //                                     fit: BoxFit.fill)),
              //                           ),
              //                         ),
              //                         Expanded(
              //                           flex: 1,
              //                           child: Row(
              //                             children: [
              //                               Expanded(
              //                                 child: Container(
              //                                   margin: scale.getMargin(
              //                                     vertical: 10,
              //                                   ),
              //                                   decoration: BoxDecoration(
              //                                       borderRadius: BorderRadius
              //                                           .all(Radius.circular(
              //                                               scale
              //                                                   .getScaledHeight(
              //                                                       10))),
              //                                       border: Border.all(
              //                                           color: LightTheme
              //                                               .greylight),
              //                                       image: DecorationImage(
              //                                           image: AssetImage(
              //                                               "assets/images/sh1.png"))),
              //                                 ),
              //                               ),
              //                               SizedBox(
              //                                 width: scale.getScaledHeight(15),
              //                               ),
              //                               Expanded(
              //                                 child: Container(
              //                                   margin: scale.getMargin(
              //                                     vertical: 10,
              //                                   ),
              //                                   decoration: BoxDecoration(
              //                                       borderRadius: BorderRadius
              //                                           .all(Radius.circular(
              //                                               scale
              //                                                   .getScaledHeight(
              //                                                       10))),
              //                                       border: Border.all(
              //                                           color: LightTheme
              //                                               .greylight),
              //                                       image: DecorationImage(
              //                                           image: AssetImage(
              //                                               "assets/images/sh1.png"))),
              //                                 ),
              //                               ),
              //                             ],
              //                           ),
              //                         )
              //                       ],
              //                     ),
              //                   ),
              //                   Container(
              //                     height: scale.fh / 2,
              //                     width: scale.fh / 2,
              //                     margin: scale.getMargin(left: 40, right: 20),
              //                   )
              //                 ],
              //               )))
              //             ],
              //           ),
              //         ),
              //         // Expanded(
              //         //   flex: 1,
              //         //   child: Container(
              //         //     child: Row(
              //         //       mainAxisAlignment: MainAxisAlignment.center,
              //         //       children: [
              //         //         Container(
              //         //           decoration: BoxDecoration(
              //         //               border: Border.all(),
              //         //               borderRadius: BorderRadius.all(
              //         //                   Radius.circular(
              //         //                       scale.getScaledHeight(10)))),
              //         //           height: scale.getScaledHeight(40),
              //         //           width: scale.getScaledWidth(160),
              //         //         ),
              //         //         SizedBox(
              //         //           width: scale.getScaledWidth(20),
              //         //         ),
              //         //         Container(
              //         //           decoration: BoxDecoration(
              //         //               color: LightTheme.bluetext,
              //         //               borderRadius: BorderRadius.all(
              //         //                   Radius.circular(
              //         //                       scale.getScaledHeight(10)))),
              //         //           height: scale.getScaledHeight(40),
              //         //           width: scale.getScaledWidth(160),
              //         //         ),
              //         //       ],
              //         //     ),
              //         //   ),
              //         // ),
              //         // Container(
              //         //   height: scale.getScaledHeight(120),
              //         //   width: scale.fw,
              //         //   margin: scale.getMargin(all: 100),
              //         //   decoration: BoxDecoration(
              //         //       border: Border.all(),
              //         //       borderRadius: BorderRadius.all(
              //         //           Radius.circular(scale.getScaledHeight(20)))),
              //         // )
              //       ],
              //     ),
              //   ),
              // ),
           