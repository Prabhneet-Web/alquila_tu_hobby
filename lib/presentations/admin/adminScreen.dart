import 'package:alquila_tu_hobby/core/utils/app_style/app_style.dart';
import 'package:alquila_tu_hobby/core/utils/color_constants/color_constants.dart';
import 'package:alquila_tu_hobby/core/utils/image_constants/image_constants.dart';
import 'package:alquila_tu_hobby/core/utils/scaling_util/scaling_utility.dart';
import 'package:alquila_tu_hobby/presentations/admin/adminConntroller.dart';
import 'package:alquila_tu_hobby/presentations/dashboard/screens/dashboard_screen.dart';
import 'package:alquila_tu_hobby/routes/app_routes.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_slider_drawer/flutter_slider_drawer.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
//import 'package:syncfusion_flutter_charts/charts.dart';

class adminScreen extends GetView<adminContrroller> {
  adminScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final scale = Get.find<ScalingUtility>()..setCurrentDeviceSize(context);
    return Scaffold(
      body: Container(
        height: scale.fh,
        width: scale.fw,
        child: Obx(
          () => Row(
            children: [
              if (controller.showDrawer.value)
                Container(
                  padding: scale.getPadding(top: 10, right: 10),
                  color: LightTheme.white,
                  width: scale.getScaledWidth(250),
                  height: scale.fh,
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(ImageConstants.logo,
                              height: scale.getScaledHeight(34.51)),
                          SizedBox(width: scale.getScaledWidth(10)),
                          Image.asset(ImageConstants.logoTextb,
                              height: scale.getScaledHeight(34.51))
                        ],
                      ),
                      SizedBox(
                        height: scale.getScaledHeight(50),
                      ),
                      InkWell(
                        onTap: () {
                          controller.mainIndx.value = 0;
                        },
                        child: Obx(
                          () => Row(
                            children: [
                              Container(
                                width: scale.getScaledWidth(8),
                                height: scale.getScaledHeight(50),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                        topRight: Radius.circular(
                                            scale.getScaledFont(15)),
                                        bottomRight: Radius.circular(
                                            scale.getScaledFont(15))),
                                    color: controller.mainIndx.value == 0
                                        ? LightTheme.yellowBG
                                        : Colors.transparent),
                              ),
                              SizedBox(
                                width: scale.getScaledWidth(15),
                              ),
                              Expanded(
                                child: Container(
                                  height: scale.getScaledHeight(50),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(
                                              scale.getScaledFont(15))),
                                      color: controller.mainIndx.value == 0
                                          ? LightTheme.yellowBG
                                          : Colors.transparent),
                                  child: Padding(
                                    padding: scale.getPadding(all: 10),
                                    child: Row(
                                      children: [
                                        Icon(Icons.category,
                                            color:
                                                controller.mainIndx.value == 0
                                                    ? LightTheme.white
                                                    : LightTheme.darkBlack),
                                        SizedBox(
                                          width: scale.getScaledWidth(15),
                                        ),
                                        Text(
                                          "Dashboard",
                                          style: AppStyle.txtNunitoRegular12
                                              .copyWith(
                                                  color: controller
                                                              .mainIndx.value ==
                                                          0
                                                      ? LightTheme.white
                                                      : LightTheme.darkBlack,
                                                  fontSize:
                                                      scale.getScaledFont(12)),
                                          textScaleFactor:
                                              ScaleSize.textScaleFactor(
                                                  context),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: scale.getScaledHeight(10),
                      ),
                      InkWell(
                        onTap: () {
                          controller.mainIndx.value = 1;
                        },
                        child: Obx(
                          () => Row(
                            children: [
                              Container(
                                width: scale.getScaledWidth(8),
                                height: scale.getScaledHeight(50),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                        topRight: Radius.circular(
                                            scale.getScaledFont(15)),
                                        bottomRight: Radius.circular(
                                            scale.getScaledFont(15))),
                                    color: controller.mainIndx.value == 1
                                        ? LightTheme.yellowBG
                                        : Colors.transparent),
                              ),
                              SizedBox(
                                width: scale.getScaledWidth(15),
                              ),
                              Expanded(
                                child: Container(
                                  height: scale.getScaledHeight(50),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(
                                              scale.getScaledFont(15))),
                                      color: controller.mainIndx.value == 1
                                          ? LightTheme.yellowBG
                                          : Colors.transparent),
                                  child: Padding(
                                    padding: scale.getPadding(all: 10),
                                    child: Row(
                                      children: [
                                        Icon(Icons.category,
                                            color:
                                                controller.mainIndx.value == 1
                                                    ? LightTheme.white
                                                    : LightTheme.darkBlack),
                                        SizedBox(
                                          width: scale.getScaledWidth(15),
                                        ),
                                        Text(
                                          "Product",
                                          style: AppStyle.txtNunitoRegular12
                                              .copyWith(
                                                  color: controller
                                                              .mainIndx.value ==
                                                          1
                                                      ? LightTheme.white
                                                      : LightTheme.darkBlack,
                                                  fontSize:
                                                      scale.getScaledFont(12)),
                                          textScaleFactor:
                                              ScaleSize.textScaleFactor(
                                                  context),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: scale.getScaledHeight(10),
                      ),
                      InkWell(
                        onTap: () {
                          controller.mainIndx.value = 2;
                        },
                        child: Obx(
                          () => Row(
                            children: [
                              Container(
                                width: scale.getScaledWidth(8),
                                height: scale.getScaledHeight(50),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                        topRight: Radius.circular(
                                            scale.getScaledFont(15)),
                                        bottomRight: Radius.circular(
                                            scale.getScaledFont(15))),
                                    color: controller.mainIndx.value == 2
                                        ? LightTheme.yellowBG
                                        : Colors.transparent),
                              ),
                              SizedBox(
                                width: scale.getScaledWidth(15),
                              ),
                              Expanded(
                                child: Container(
                                  height: scale.getScaledHeight(50),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(
                                              scale.getScaledFont(15))),
                                      color: controller.mainIndx.value == 2
                                          ? LightTheme.yellowBG
                                          : Colors.transparent),
                                  child: Padding(
                                    padding: scale.getPadding(all: 10),
                                    child: Row(
                                      children: [
                                        Icon(Icons.favorite_border,
                                            color:
                                                controller.mainIndx.value == 2
                                                    ? LightTheme.white
                                                    : LightTheme.darkBlack),
                                        SizedBox(
                                          width: scale.getScaledWidth(15),
                                        ),
                                        Text(
                                          "User",
                                          style: AppStyle.txtNunitoRegular12
                                              .copyWith(
                                                  color: controller
                                                              .mainIndx.value ==
                                                          2
                                                      ? LightTheme.white
                                                      : LightTheme.darkBlack,
                                                  fontSize:
                                                      scale.getScaledFont(12)),
                                          textScaleFactor:
                                              ScaleSize.textScaleFactor(
                                                  context),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: scale.getScaledHeight(10),
                      ),
                      InkWell(
                        onTap: () {
                          controller.mainIndx.value = 3;
                        },
                        child: Obx(
                          () => Row(
                            children: [
                              Container(
                                width: scale.getScaledWidth(8),
                                height: scale.getScaledHeight(50),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                        topRight: Radius.circular(
                                            scale.getScaledFont(15)),
                                        bottomRight: Radius.circular(
                                            scale.getScaledFont(15))),
                                    color: controller.mainIndx.value == 3
                                        ? LightTheme.yellowBG
                                        : Colors.transparent),
                              ),
                              SizedBox(
                                width: scale.getScaledWidth(15),
                              ),
                              Expanded(
                                child: Container(
                                  height: scale.getScaledHeight(50),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(
                                              scale.getScaledFont(15))),
                                      color: controller.mainIndx.value == 3
                                          ? LightTheme.yellowBG
                                          : Colors.transparent),
                                  child: Padding(
                                    padding: scale.getPadding(all: 10),
                                    child: Row(
                                      children: [
                                        Icon(Icons.category,
                                            color:
                                                controller.mainIndx.value == 3
                                                    ? LightTheme.white
                                                    : LightTheme.darkBlack),
                                        SizedBox(
                                          width: scale.getScaledWidth(15),
                                        ),
                                        Text(
                                          "Categories",
                                          style: AppStyle.txtNunitoRegular12
                                              .copyWith(
                                                  color: controller
                                                              .mainIndx.value ==
                                                          3
                                                      ? LightTheme.white
                                                      : LightTheme.darkBlack,
                                                  fontSize:
                                                      scale.getScaledFont(12)),
                                          textScaleFactor:
                                              ScaleSize.textScaleFactor(
                                                  context),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: scale.getScaledHeight(10),
                      ),
                    ],
                  ),
                ),
              Expanded(
                child: Container(
                  child: Column(
                    children: [
                      Container(
                        height: scale.getScaledHeight(40),
                        color: Colors.white,
                        child: Row(
                          children: [
                            IconButton(
                                onPressed: () {
                                  controller.showDrawer.value =
                                      !controller.showDrawer.value;
                                },
                                icon: Icon(Icons.menu)),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Obx(
                          () => Container(
                              padding: scale.getPadding(
                                  horizontal: 20, vertical: 20),
                              color: LightTheme.adminbg,
                              child: controller.mainIndx.value == 0
                                  ? adashboardScreen(scale, context)
                                  : controller.mainIndx.value == 1
                                      ? productScreen(scale, context)
                                      : controller.mainIndx.value == 2
                                          ? userScreen(context, scale)
                                          : catScreen(context, scale)),
                        ),
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
  }

  Widget userScreen(BuildContext context, ScalingUtility scale) {
    return Center(
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "User",
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
                    "Add user",
                    style: AppStyle.txtNunitoRegular12,
                    textScaleFactor: ScaleSize.textScaleFactor(context),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: scale.getScaledHeight(25),
          ),
          Container(
            decoration: BoxDecoration(
                color: LightTheme.white,
                borderRadius: BorderRadius.circular(scale.getScaledWidth(20))),
            //height: scale.fh * .8,
            width: scale.fw,
            child: DataTable(
              dataRowHeight: scale.getScaledHeight(62),
              columns: [
                DataColumn(
                    label: Text(
                  "ID",
                  style: AppStyle.txtNunitoBold20
                      .copyWith(fontSize: 7, fontWeight: FontWeight.bold),
                  textScaleFactor: ScaleSize.textScaleFactor(context),
                )),
                DataColumn(
                    label: Text(
                  "NAME",
                  style: AppStyle.txtNunitoBold20
                      .copyWith(fontSize: 7, fontWeight: FontWeight.bold),
                  textScaleFactor: ScaleSize.textScaleFactor(context),
                )),
                DataColumn(
                    label: Text(
                  "ADDRESS",
                  style: AppStyle.txtNunitoBold20
                      .copyWith(fontSize: 7, fontWeight: FontWeight.bold),
                  textScaleFactor: ScaleSize.textScaleFactor(context),
                )),
                DataColumn(
                    label: Text(
                  "DATE",
                  style: AppStyle.txtNunitoBold20
                      .copyWith(fontSize: 7, fontWeight: FontWeight.bold),
                  textScaleFactor: ScaleSize.textScaleFactor(context),
                )),
                DataColumn(
                    label: Text(
                  "TYPE",
                  style: AppStyle.txtNunitoBold20
                      .copyWith(fontSize: 7, fontWeight: FontWeight.bold),
                  textScaleFactor: ScaleSize.textScaleFactor(context),
                )),
                DataColumn(
                    label: Text(
                  "    Action",
                  style: AppStyle.txtNunitoBold20
                      .copyWith(fontSize: 7, fontWeight: FontWeight.bold),
                  textScaleFactor: ScaleSize.textScaleFactor(context),
                )),
              ],
              rows: controller.data.map((element) {
                return DataRow(
                  cells: [
                    DataCell(Text(
                      element["id"],
                      style: AppStyle.txtNunitoRegular12
                          .copyWith(fontSize: 6, fontWeight: FontWeight.bold),
                      textScaleFactor: ScaleSize.textScaleFactor(context),
                    )),
                    DataCell(Text(
                      element["name"],
                      style: AppStyle.txtNunitoRegular12
                          .copyWith(fontSize: 6, fontWeight: FontWeight.bold),
                      textScaleFactor: ScaleSize.textScaleFactor(context),
                    )),
                    DataCell(Text(
                      element["address"],
                      style: AppStyle.txtNunitoRegular12
                          .copyWith(fontSize: 6, fontWeight: FontWeight.bold),
                      textScaleFactor: ScaleSize.textScaleFactor(context),
                    )),
                    DataCell(Text(
                      element["date"],
                      style: AppStyle.txtNunitoRegular12
                          .copyWith(fontSize: 6, fontWeight: FontWeight.bold),
                      textScaleFactor: ScaleSize.textScaleFactor(context),
                    )),
                    DataCell(Text(
                      element["type"],
                      style: AppStyle.txtNunitoRegular12
                          .copyWith(fontSize: 6, fontWeight: FontWeight.bold),
                      textScaleFactor: ScaleSize.textScaleFactor(context),
                    )),
                    DataCell(Row(
                      children: [
                        InkWell(
                            child: Container(
                                child: Center(child: Icon(Icons.edit)))),
                        InkWell(
                            child: Container(
                                child: Center(child: Icon(Icons.delete)))),
                      ],
                    )),
                  ],
                );
              }).toList(),
            ),
          ),
        ],
      ),
    );
  }

  Widget catScreen(BuildContext context, ScalingUtility scale) {
    return Center(
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Categories",
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
                    "Add Categorie",
                    style: AppStyle.txtNunitoRegular12,
                    textScaleFactor: ScaleSize.textScaleFactor(context),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: scale.getScaledHeight(25),
          ),
          Container(
            decoration: BoxDecoration(
                color: LightTheme.white,
                borderRadius: BorderRadius.circular(scale.getScaledWidth(20))),
            //height: scale.fh * .8,
            width: scale.fw,
            child: DataTable(
              dataRowHeight: scale.getScaledHeight(62),
              columns: [
                DataColumn(
                    label: Text(
                  "ID",
                  style: AppStyle.txtNunitoBold20
                      .copyWith(fontSize: 7, fontWeight: FontWeight.bold),
                  textScaleFactor: ScaleSize.textScaleFactor(context),
                )),
                DataColumn(
                    label: Text(
                  "NAME",
                  style: AppStyle.txtNunitoBold20
                      .copyWith(fontSize: 7, fontWeight: FontWeight.bold),
                  textScaleFactor: ScaleSize.textScaleFactor(context),
                )),
                DataColumn(
                    label: Text(
                  "Details",
                  style: AppStyle.txtNunitoBold20
                      .copyWith(fontSize: 7, fontWeight: FontWeight.bold),
                  textScaleFactor: ScaleSize.textScaleFactor(context),
                )),
                DataColumn(
                    label: Text(
                  "DATE",
                  style: AppStyle.txtNunitoBold20
                      .copyWith(fontSize: 7, fontWeight: FontWeight.bold),
                  textScaleFactor: ScaleSize.textScaleFactor(context),
                )),
                DataColumn(
                    label: Text(
                  "TYPE",
                  style: AppStyle.txtNunitoBold20
                      .copyWith(fontSize: 7, fontWeight: FontWeight.bold),
                  textScaleFactor: ScaleSize.textScaleFactor(context),
                )),
                DataColumn(
                    label: Text(
                  "    Action",
                  style: AppStyle.txtNunitoBold20
                      .copyWith(fontSize: 7, fontWeight: FontWeight.bold),
                  textScaleFactor: ScaleSize.textScaleFactor(context),
                )),
              ],
              rows: controller.data.map((element) {
                return DataRow(
                  cells: [
                    DataCell(Text(
                      element["id"],
                      style: AppStyle.txtNunitoRegular12
                          .copyWith(fontSize: 6, fontWeight: FontWeight.bold),
                      textScaleFactor: ScaleSize.textScaleFactor(context),
                    )),
                    DataCell(Text(
                      element["name"],
                      style: AppStyle.txtNunitoRegular12
                          .copyWith(fontSize: 6, fontWeight: FontWeight.bold),
                      textScaleFactor: ScaleSize.textScaleFactor(context),
                    )),
                    DataCell(Text(
                      element["address"],
                      style: AppStyle.txtNunitoRegular12
                          .copyWith(fontSize: 6, fontWeight: FontWeight.bold),
                      textScaleFactor: ScaleSize.textScaleFactor(context),
                    )),
                    DataCell(Text(
                      element["date"],
                      style: AppStyle.txtNunitoRegular12
                          .copyWith(fontSize: 6, fontWeight: FontWeight.bold),
                      textScaleFactor: ScaleSize.textScaleFactor(context),
                    )),
                    DataCell(Text(
                      element["type"],
                      style: AppStyle.txtNunitoRegular12
                          .copyWith(fontSize: 6, fontWeight: FontWeight.bold),
                      textScaleFactor: ScaleSize.textScaleFactor(context),
                    )),
                    DataCell(Row(
                      children: [
                        InkWell(
                            child: Container(
                                child: Center(child: Icon(Icons.edit)))),
                        InkWell(
                            child: Container(
                                child: Center(child: Icon(Icons.delete)))),
                      ],
                    )),
                  ],
                );
              }).toList(),
            ),
          ),
        ],
      ),
    );
  }

  Widget productScreen(ScalingUtility scale, BuildContext context) {
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
            const SizedBox()
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
                  18), // Spacing between items along the main axis
              crossAxisSpacing: scale.getScaledWidth(
                  18), //  // Spacing between items along the cross axis
              childAspectRatio: .69, // Aspect ratio of each item (width/height)
            ),
            itemBuilder: (BuildContext context, int index) {
              return GridTile(
                child: InkWell(
                  onTap: () {
                    //  Get.toNamed(AppRoutes.product);
                  },
                  child: Container(
                    padding: scale.getPadding(all: 10),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(
                            Radius.circular(scale.getScaledHeight(12)))),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                            flex: 3,
                            child: Container(
                                child: Image(
                                    image:
                                        AssetImage("assets/images/sh1.png")))),
                        Expanded(
                          flex: 2,
                          child: Padding(
                            padding:
                                scale.getPadding(top: 20, bottom: 10, left: 15),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
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
                                          style: AppStyle.txtNunitoBold20
                                              .copyWith(
                                                  color: LightTheme.darkBlack,
                                                  fontSize:
                                                      scale.getScaledFont(8)),
                                          textScaleFactor:
                                              ScaleSize.textScaleFactor(
                                                  context),
                                        ),
                                        SizedBox(
                                          height: scale.getScaledHeight(5),
                                        ),
                                        Text(
                                          "\$ 50.00",
                                          style: AppStyle.txtNunitoBold20
                                              .copyWith(
                                                  color: LightTheme.blueColor,
                                                  fontSize:
                                                      scale.getScaledFont(8)),
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
                                  height: scale.getScaledHeight(5),
                                ),
                                Row(
                                  children: [
                                    for (int i = 0; i < 5; i++)
                                      Image(
                                          image: AssetImage(
                                              "assets/logos/star1.png")),
                                    Text(
                                      "(131)",
                                      style: AppStyle.txtNunitoRegular12
                                          .copyWith(
                                              color: LightTheme.greylight,
                                              fontSize: 6,
                                              fontWeight: FontWeight.bold),
                                      textScaleFactor:
                                          ScaleSize.textScaleFactor(context),
                                    )
                                  ],
                                ),
                                SizedBox(
                                  height: scale.getScaledHeight(5),
                                ),
                                Container(
                                  decoration: BoxDecoration(
                                      color: LightTheme.greylight10,
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(
                                              scale.getScaledHeight(7)))),
                                  child: Padding(
                                    padding: scale.getPadding(
                                        horizontal: 10, vertical: 9),
                                    child: Text(
                                      "Edit Product",
                                      style: AppStyle.txtNunitobold14White
                                          .copyWith(
                                              fontSize: 6, color: Colors.black),
                                      textScaleFactor:
                                          ScaleSize.textScaleFactor(context),
                                    ),
                                  ),
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
      ],
    );
  }

  adashboardScreen(ScalingUtility scale, BuildContext context) {
    return Center(
      child: Padding(
        padding: scale.getPadding(left: 20, right: 20),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: scale.getPadding(left: 4),
                    child: Text(
                      "Dashboard",
                      style: AppStyle.txtNunitoBold20.copyWith(
                          color: LightTheme.darkBlack,
                          fontSize: scale.getScaledFont(15)),
                      textScaleFactor: ScaleSize.textScaleFactor(context),
                    ),
                  ),
                  const SizedBox()
                ],
              ),
              Container(
                height: scale.getScaledHeight(155),
                child: Row(
                  children: [
                    userContainer(scale, context),
                    userContainer(scale, context),
                    userContainer(scale, context),
                    userContainer(scale, context)
                  ],
                ),
              ),
              Container(
                padding: scale.getPadding(all: 14),
                decoration: BoxDecoration(
                    color: LightTheme.white,
                    borderRadius: BorderRadius.all(
                        Radius.circular(scale.getScaledFont(18)))),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: scale.getPadding(left: 10, bottom: 18, top: 10),
                      child: Text(
                        "Sales details",
                        style: AppStyle.txtNunitoBold20.copyWith(
                            color: LightTheme.darkBlack,
                            fontSize: scale.getScaledFont(12)),
                        textScaleFactor: ScaleSize.textScaleFactor(context),
                      ),
                    ),
                    Center(
                      child: SfCartesianChart(
                        primaryXAxis: const CategoryAxis(
                          majorGridLines: MajorGridLines(width: 0),
                        ),
                        primaryYAxis: const NumericAxis(
                          minimum: 20, // Minimum value for y-axis
                          maximum: 100, // Maximum value for y-axis
                          interval: 20,
                        ),
                        series: <CartesianSeries>[
                          AreaSeries<ChartData, String>(
                            dataSource: chartData,
                            xValueMapper: (ChartData data, _) => data.x,
                            yValueMapper: (ChartData data, _) => data.y,
                            gradient: LinearGradient(
                              colors: [
                                Colors.blue.withOpacity(0.3),
                                Colors.blue.withOpacity(0.05),
                              ],
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                            ),
                            borderColor: Colors.blue,
                            borderWidth: 2,
                          ),
                          LineSeries<ChartData, String>(
                            dataSource: chartData,
                            markerSettings: const MarkerSettings(
                                isVisible: true, color: Colors.blue),
                            xValueMapper: (ChartData data, _) => data.x,
                            yValueMapper: (ChartData data, _) => data.y,
                            color: Colors.blue,
                          )
                        ],
                        tooltipBehavior: TooltipBehavior(enable: true),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: scale.getScaledHeight(20),
              ),
              Container(
                padding: scale.getPadding(horizontal: 25),
                decoration: BoxDecoration(
                    color: LightTheme.white,
                    borderRadius: BorderRadius.all(
                        Radius.circular(scale.getScaledFont(18)))),
                child: Center(
                  child: Column(
                    children: [
                      SizedBox(
                        height: scale.getScaledHeight(20),
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: scale.getPadding(bottom: 18, top: 10),
                            child: Text(
                              "Product details",
                              style: AppStyle.txtNunitoBold20.copyWith(
                                  color: LightTheme.darkBlack,
                                  fontSize: scale.getScaledFont(12)),
                              textScaleFactor:
                                  ScaleSize.textScaleFactor(context),
                            ),
                          ),
                          Spacer()
                        ],
                      ),
                      Center(
                          child: Container(
                        child: Table(
                          children: [
                            // Header Row (no border)
                            TableRow(
                              decoration: BoxDecoration(
                                  color: LightTheme.adminbg,
                                  borderRadius: BorderRadius.all(
                                      Radius.circular(
                                          scale.getScaledFont(10)))),
                              children: [
                                _buildTableCell('Product Name', scale, context,
                                    isHeader: true),
                                _buildTableCell('Location', scale, context,
                                    isHeader: true),
                                _buildTableCell('Date - Time', scale, context,
                                    isHeader: true),
                                _buildTableCell('Piece', scale, context,
                                    isHeader: true),
                                _buildTableCell('Amount', scale, context,
                                    isHeader: true),
                                _buildTableCell('Status', scale, context,
                                    isHeader: true),
                              ],
                            ),

                            // Data Rows
                            ...controller.products.map((product) => TableRow(
                                  decoration: const BoxDecoration(
                                    border: Border(
                                      bottom: BorderSide(
                                        color: LightTheme
                                            .greylight10, // You can adjust the color and other properties as needed
                                        width:
                                            1.0, // Adjust the width as needed
                                      ),
                                    ),
                                  ),
                                  children: [
                                    // Product Image Cell
                                    Padding(
                                      padding: scale.getPadding(top: 20),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Container(
                                            child: Image.asset(
                                                "assets/images/sh1.png",
                                                height:
                                                    scale.getScaledHeight(30)),
                                          ),
                                          SizedBox(
                                            width: scale.getScaledWidth(10),
                                          ),
                                          Text(
                                            "Apple watch",
                                            style: AppStyle.txtNunitoRegular12
                                                .copyWith(
                                                    fontSize: 8,
                                                    color:
                                                        LightTheme.darkBlack),
                                            textScaleFactor:
                                                ScaleSize.textScaleFactor(
                                                    context),
                                          )
                                        ],
                                      ),
                                    ),
                                    _buildTableCell(
                                        product['location'], scale, context),
                                    _buildTableCell(
                                        product['dateTime'], scale, context),
                                    _buildTableCell(product['piece'].toString(),
                                        scale, context),
                                    _buildTableCell(
                                        product['amount'], scale, context),
                                    // Status Button Cell
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Container(
                                          margin: scale.getMargin(
                                            top: 20,
                                          ),
                                          padding: scale.getPadding(all: 8),
                                          decoration: BoxDecoration(
                                              color: _getStatusColor(
                                                  product['status']),
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(scale
                                                      .getScaledHeight(10)))),
                                          child: Text(
                                            product['status'],
                                            style: AppStyle.txtNunitoBold20
                                                .copyWith(
                                                    fontSize: 7,
                                                    color: LightTheme.white),
                                            textScaleFactor:
                                                ScaleSize.textScaleFactor(
                                                    context),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                )),
                          ],
                        ),
                      ))
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Color _getStatusColor(String status) {
    switch (status) {
      case 'Delivered':
        return Colors.green;
      case 'Pending':
        return Colors.orange;
      case 'Cancelled':
        return Colors.red;
      default:
        return Colors.grey;
    }
  }

  Widget _buildTableCell(
      String text, ScalingUtility scale, BuildContext context,
      {bool isHeader = false}) {
    return TableCell(
      child: Center(
        child: Padding(
          padding: isHeader
              ? scale.getPadding(all: 14)
              : scale.getPadding(top: 30, bottom: 30),
          child: Text(
            text,
            textScaleFactor: ScaleSize.textScaleFactor(context),
            style: isHeader
                ? AppStyle.txtNunitoBold20
                    .copyWith(fontSize: 8, color: LightTheme.darkBlack)
                : AppStyle.txtNunitoBold20
                    .copyWith(fontSize: 7, color: LightTheme.greytext),
          ),
        ),
      ),
    );
  }

  userContainer(ScalingUtility scale, BuildContext context) {
    return Expanded(
        child: Container(
      margin: scale.getMargin(horizontal: 7, vertical: 14),
      padding: scale.getPadding(all: 10),
      decoration: BoxDecoration(
          color: LightTheme.white,
          borderRadius:
              BorderRadius.all(Radius.circular(scale.getScaledFont(15)))),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
              child: Container(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Total user",
                      style: AppStyle.txtNunitoRegular12.copyWith(
                          color: LightTheme.darkBlack,
                          fontSize: scale.getScaledFont(8)),
                      textScaleFactor: ScaleSize.textScaleFactor(context),
                    ),
                    SizedBox(
                      height: scale.getScaledHeight(10),
                    ),
                    Text(
                      "50,000",
                      style: TextStyle(
                          fontSize: scale.getScaledFont(14),
                          fontWeight: FontWeight.bold),
                      textScaleFactor: ScaleSize.textScaleFactor(context),
                    )
                  ],
                ),
                Spacer(),
                Container(
                  margin: scale.getMargin(bottom: 15),
                  padding: scale.getPadding(all: 10),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(
                          Radius.circular(scale.getScaledFont(20))),
                      color: LightTheme.yellowBG.withOpacity(.4)),
                  child: Icon(Icons.people),
                )
              ],
            ),
          )),
          Container(
            child: Text(
              "8.5% up from yesterday",
              style: AppStyle.txtNunitoBold20.copyWith(
                  color: LightTheme.darkBlack,
                  fontSize: 7,
                  fontWeight: FontWeight.bold),
              textScaleFactor: ScaleSize.textScaleFactor(context),
            ),
          )
        ],
      ),
    ));
  }

  final List<ChartData> chartData = [
    ChartData('5k', 20),
    ChartData('10k', 30),
    ChartData('15k', 35),
    ChartData('20k', 50),
    ChartData('25k', 20),
    ChartData('30k', 35),
    ChartData('35k', 50),
    ChartData('40k', 60),
    ChartData('45k', 50),
    ChartData('50k', 20),
    ChartData('55k', 70),
    ChartData('60k', 85),
  ];
}

class ChartData {
  ChartData(this.x, this.y);
  final String x;
  final double y;
}
