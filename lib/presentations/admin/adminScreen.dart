import 'package:alquila_tu_hobby/core/utils/app_style/app_style.dart';
import 'package:alquila_tu_hobby/core/utils/color_constants/color_constants.dart';
import 'package:alquila_tu_hobby/core/utils/image_constants/image_constants.dart';
import 'package:alquila_tu_hobby/core/utils/scaling_util/scaling_utility.dart';
import 'package:alquila_tu_hobby/presentations/admin/adminConntroller.dart';
import 'package:alquila_tu_hobby/presentations/dashboard/dashboardscreen.dart';
import 'package:alquila_tu_hobby/routes/app_routes.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_slider_drawer/flutter_slider_drawer.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
//import 'package:syncfusion_flutter_charts/charts.dart';

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
                                  ?adashboardScreen(scale,context)
                                  // productScreen(scale, context)
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
                    DataCell(
                      Text(
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
              childAspectRatio: .7, // Aspect ratio of each item (width/height)
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
                                              fontSize: 7, color: Colors.black),
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
  adashboardScreen(ScalingUtility scale,BuildContext context){
    return Center(
      child: Padding(
        padding: scale.getPadding(left: 14,right: 14),
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
          Container(height: scale.getScaledHeight(155),child: Row(children: [userContainer(scale,context),userContainer(scale,context),userContainer(scale,context),userContainer(scale,context)],),),
            Container(
              padding: scale.getPadding(all: 14),
              decoration: BoxDecoration(color: LightTheme.white,borderRadius: BorderRadius.all(Radius.circular(scale.getScaledFont(18)))),
                
               
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                   Padding(
                     padding: scale.getPadding(left: 10,bottom: 18,top: 10),
                     child: Text(
                                     "Sales details",
                                     style: AppStyle.txtNunitoBold20.copyWith(
                      color: LightTheme.darkBlack,
                      fontSize: scale.getScaledFont(12)),
                                     textScaleFactor: ScaleSize.textScaleFactor(context),
                                   ),
                   ),
                  // SfCartesianChart(
                    
                  //         // Initialize category axis
                  //         primaryXAxis: CategoryAxis(),
                  //         primaryYAxis: NumericAxis(
                  //           minimum: 20, // Minimum value for y-axis
                  //           maximum: 100, // Maximum value for y-axis
                  //           interval: 20,
                  //         ),
                         
                          
                  
                  //         series: <LineSeries<SalesData, String>>[
                  //           LineSeries<SalesData, String>(
                  //             // Bind data source
                  //             dataSource:  <SalesData>[
                  //               SalesData('5k', 20),
                  //                SalesData('10k', 30),
                  //                 SalesData('15k', 35),
                  //                  SalesData('20k', 50),
                  //                   SalesData('25k', 20),
                  //                    SalesData('30k', 35),
                  //                     SalesData('35k', 50),
                  //                      SalesData('40k', 60),
                  //                       SalesData('45k', 50),
                  //                        SalesData('50k', 20),
                  //                         SalesData('55k', 70)
                  //                         , SalesData('60k', 85),
                                          
                  //             ],
                  //             xValueMapper: (SalesData sales, _) => sales.year,
                  //             yValueMapper: (SalesData sales, _) => sales.sales,
                  //              markerSettings: MarkerSettings(
                  //               color: Colors.blue,
                  //               isVisible: true, // Show markers
                  //               shape: DataMarkerType.circle, // Set marker shape
                  //             ),
                  //           )
                  //         ]
                  //       ),
                ],
              ),
            ),
          ],
        ),
      ),
    )
        ;
  }
  userContainer(ScalingUtility scale,BuildContext context){
    return Expanded(child: Container(
      margin: scale.getMargin(horizontal: 7,vertical: 14),
      padding: scale.getPadding(all: 10),
      decoration: BoxDecoration(
        color: LightTheme.white,
        borderRadius: BorderRadius.all(Radius.circular(scale.getScaledFont(15)))
      ),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start,
        children: [Expanded(child: Container(
          child: Row(crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start, children: [Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Text(
                  "Total user",
                  style: AppStyle.txtNunitoRegular12.copyWith(
                      color: LightTheme.darkBlack,
                      fontSize: scale.getScaledFont(8)),
                  textScaleFactor: ScaleSize.textScaleFactor(context),
                ),
                SizedBox(height: scale.getScaledHeight(10),),
                Text(
                  "50,000",
                  style: TextStyle(fontSize: scale.getScaledFont(14),fontWeight: FontWeight.bold),
                  textScaleFactor: ScaleSize.textScaleFactor(context),
                )],),Spacer(),Container(margin: scale.getMargin(bottom: 15), padding: scale.getPadding(all: 10), decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(scale.getScaledFont(20))), color: LightTheme.yellowBG.withOpacity(.4)), child: Icon(Icons.people),)],),
        )),Container(child:  Text(
                      "8.5% up from yesterday",
                      style: AppStyle.txtNunitoBold20
                          .copyWith(color: LightTheme.darkBlack, fontSize: 7, fontWeight: FontWeight.bold),
                      textScaleFactor: ScaleSize.textScaleFactor(context),
                    ),)],),
    ));
  }
}
class SalesData {
  SalesData(this.year, this.sales);
  final String year;
  final double sales;
}