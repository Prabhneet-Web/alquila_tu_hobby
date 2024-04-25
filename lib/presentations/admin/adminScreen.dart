import 'package:alquila_tu_hobby/core/utils/app_style/app_style.dart';
import 'package:alquila_tu_hobby/core/utils/color_constants/color_constants.dart';
import 'package:alquila_tu_hobby/core/utils/image_constants/image_constants.dart';
import 'package:alquila_tu_hobby/core/utils/scaling_util/scaling_utility.dart';
import 'package:alquila_tu_hobby/presentations/admin/adminConntroller.dart';
import 'package:alquila_tu_hobby/routes/app_routes.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_slider_drawer/flutter_slider_drawer.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class adminScreen extends GetView<adminContrroller> {
  const adminScreen({super.key});

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
                              child: controller.mainIndx.value == 1
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
              dataRowHeight: scale.getScaledHeight(70),
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
                    "Add Categori",
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
              dataRowHeight: scale.getScaledHeight(70),
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
            SizedBox()
          ],
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
              childAspectRatio: 1, // Aspect ratio of each item (width/height)
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
                        border: Border.all(color: LightTheme.borderColor),
                        borderRadius: BorderRadius.all(
                            Radius.circular(scale.getScaledHeight(17)))),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        index % 2 == 0
                            ? Image(image: AssetImage("assets/images/sh1.png"))
                            : Image(image: AssetImage("assets/images/sh2.png")),
                        Expanded(
                          child: Padding(
                            padding: scale.getPadding(top: 20, bottom: 10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                index % 2 == 0
                                    ? Text(
                                        "Hoka Sneakers",
                                        style: TextStyle(
                                            color: LightTheme.bluetext,
                                            fontSize: scale.getScaledFont(9)),
                                        textScaleFactor:
                                            ScaleSize.textScaleFactor(context),
                                      )
                                    : Text(
                                        "Blue Shoes",
                                        style: TextStyle(
                                            color: LightTheme.bluetext,
                                            fontSize: scale.getScaledFont(9)),
                                        textScaleFactor:
                                            ScaleSize.textScaleFactor(context),
                                      ),
                                Expanded(
                                  child: Row(
                                    children: [
                                      Text(
                                        "&11 /",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: scale.getScaledFont(9)),
                                        textScaleFactor:
                                            ScaleSize.textScaleFactor(context),
                                      ),
                                      Text(
                                        " Per day",
                                        style: TextStyle(
                                            color: LightTheme.greytext,
                                            fontSize: scale.getScaledFont(8)),
                                        textScaleFactor:
                                            ScaleSize.textScaleFactor(context),
                                      )
                                    ],
                                  ),
                                ),
                                Row(
                                  children: [
                                    for (int i = 0; i < 5; i++)
                                      Container(
                                        height: 20,
                                        width: 20,
                                        decoration: BoxDecoration(
                                            image: DecorationImage(
                                                image: AssetImage(
                                                    "assets/logos/fav.png"))),
                                      )
                                  ],
                                )
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
}
