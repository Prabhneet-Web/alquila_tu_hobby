import 'package:alquila_tu_hobby/core/utils/app_style/app_style.dart';
import 'package:alquila_tu_hobby/core/utils/color_constants/color_constants.dart';
import 'package:alquila_tu_hobby/core/utils/image_constants/image_constants.dart';
import 'package:alquila_tu_hobby/core/utils/scaling_util/scaling_utility.dart';
import 'package:alquila_tu_hobby/presentations/admin/adminConntroller.dart';
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
                  padding: scale.getPadding(top: 10, left: 20),
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
                          controller.mainIndx.value = 2;
                        },
                        child: Container(
                          child: Row(
                            children: [
                              Icon(Icons.favorite_border),
                              SizedBox(
                                width: scale.getScaledWidth(15),
                              ),
                              Text(
                                "User",
                                style: AppStyle.txtNunitoRegular12.copyWith(
                                    color: LightTheme.darkBlack,
                                    fontSize: scale.getScaledFont(12)),
                                textScaleFactor:
                                    ScaleSize.textScaleFactor(context),
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
                        child: Container(
                          child: Row(
                            children: [
                              Icon(Icons.category),
                              SizedBox(
                                width: scale.getScaledWidth(15),
                              ),
                              Text(
                                "Categories",
                                style: AppStyle.txtNunitoRegular12.copyWith(
                                    color: LightTheme.darkBlack,
                                    fontSize: scale.getScaledFont(12)),
                                textScaleFactor:
                                    ScaleSize.textScaleFactor(context),
                              ),
                            ],
                          ),
                        ),
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
                              child: controller.mainIndx.value == 2
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
}
