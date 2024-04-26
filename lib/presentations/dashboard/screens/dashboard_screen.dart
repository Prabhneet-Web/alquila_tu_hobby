import 'package:alquila_tu_hobby/core/utils/color_constants/color_constants.dart';
import 'package:alquila_tu_hobby/core/utils/scaling_util/scaling_utility.dart';
import 'package:alquila_tu_hobby/presentations/dashboard/controller/dashboard_controller.dart';
import 'package:alquila_tu_hobby/routes/app_routes.dart';
import 'package:alquila_tu_hobby/widgets/check_box.dart';
import 'package:alquila_tu_hobby/widgets/common_appbar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DashBoardScreen extends GetView<DashboardController> {
  const DashBoardScreen({super.key});

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
              children: [
                Expanded(
                    flex: 3,
                    child: Container(
                      margin: scale.getPadding(right: 20, left: 40, top: 40),
                      padding:
                          scale.getPadding(left: 20, right: 20, bottom: 10),
                      child: SingleChildScrollView(
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                                InkWell(
                                  onTap: () {},
                                  child: Text(
                                    "Reset",
                                    style: TextStyle(
                                        color: LightTheme.greytext,
                                        fontSize: scale.getScaledFont(8)),
                                    textScaleFactor:
                                        ScaleSize.textScaleFactor(context),
                                  ),
                                )
                              ],
                            ),
                            SizedBox(height: scale.getScaledHeight(20)),
                            SizedBox(
                              height: scale.getScaledHeight(200),
                              child: ListView.separated(
                                  itemBuilder: (BuildContext context, int index) {
                                    return Row(
                                      children: [
                                        Obx(
                                          () => TriStateCheckbox(
                                            boxState:
                                                (controller.boxStateOfCategories?[index] ??
                                                    CheckboxState.UNCHECKED),
                                            onTap: () {
                                              if (controller.boxStateOfCategories?[index] ==
                                                  CheckboxState.UNCHECKED) {
                                                controller.boxStateOfCategories?[index] =
                                                    CheckboxState.CHECKED;
                                              } else {
                                                controller.boxStateOfCategories?[index] =
                                                    CheckboxState.UNCHECKED;
                                              }
                                            },
                                          ),
                                        ),
                                        SizedBox(width: scale.getScaledWidth(6)),
                                        Text(
                                          (controller.categories?[index] ?? ""),
                                          style: TextStyle(
                                              color: LightTheme.darkBlack,
                                              fontSize: scale.getScaledFont(8)),
                                          textScaleFactor:
                                              ScaleSize.textScaleFactor(context),
                                        ),
                                        const Spacer(),
                                        Text(
                                          "${controller.quantityOfEachCategory?[index] ?? 0}",
                                          style: TextStyle(
                                              color: LightTheme.darkBlack,
                                              fontSize: scale.getScaledFont(8)),
                                          textScaleFactor:
                                          ScaleSize.textScaleFactor(context),
                                        ),
                                      ],
                                    );
                                  },
                                  itemCount:
                                      (controller.categories?.length ?? 0),
                                separatorBuilder: (BuildContext context, int index) => SizedBox(height: scale.getScaledHeight(15),)),
                            ),
                            Padding(
                              padding: scale.getPadding(vertical: 15),
                              child: const Divider(),
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Colors",
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
                                      "${controller.numberOfColorsSelected?.value ?? 0} Selected",
                                      style: TextStyle(
                                          color: LightTheme.greytext,
                                          fontWeight: FontWeight.bold,
                                          fontSize: scale.getScaledFont(8)),
                                      textScaleFactor:
                                          ScaleSize.textScaleFactor(context),
                                    ),
                                    InkWell(
                                      onTap: () {},
                                      child: Text(
                                        "Reset",
                                        style: TextStyle(
                                            color: LightTheme.greytext,
                                            fontSize: scale.getScaledFont(8)),
                                        textScaleFactor:
                                            ScaleSize.textScaleFactor(context),
                                      ),
                                    )
                                  ],
                                ),
                                SizedBox(
                                  height: scale.getScaledHeight(10),
                                ),
                                SizedBox(
                                  height: scale.getScaledHeight(20),
                                  child: ListView.separated(
                                    scrollDirection : Axis.horizontal,
                                    itemBuilder: (BuildContext context, int index) => Container(
                                    margin: scale.getMargin(right: 10),
                                    height: scale.getScaledHeight(20),
                                    width: scale.getScaledWidth(20),
                                    decoration: BoxDecoration(
                                        color: (controller.colorsToSelect?[index] ?? Colors.white),
                                        shape: BoxShape.circle),
                                  ), separatorBuilder: (BuildContext context, int index) => SizedBox(width: scale.getScaledWidth(1),), itemCount: (controller.colorsToSelect?.length ?? 0)),
                                ),
                              ],
                            ),
                            Padding(
                              padding: scale.getPadding(vertical: 15),
                              child: const Divider(),
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
                                      "${controller.sizeToSelect?.value ?? 0} Selected",
                                      style: TextStyle(
                                          color: LightTheme.greytext,
                                          fontWeight: FontWeight.bold,
                                          fontSize: scale.getScaledFont(8)),
                                      textScaleFactor:
                                          ScaleSize.textScaleFactor(context),
                                    ),
                                    InkWell(
                                      onTap: () {},
                                      child: Text(
                                        "Reset",
                                        style: TextStyle(
                                            color: LightTheme.greytext,
                                            fontSize: scale.getScaledFont(8)),
                                        textScaleFactor:
                                            ScaleSize.textScaleFactor(context),
                                      ),
                                    )
                                  ],
                                ),
                                SizedBox(
                                  height: scale.getScaledHeight(15),
                                ),
                                SizedBox(
                                  height: scale.getScaledHeight(130),
                                  child: ListView.separated(
                                      itemBuilder: (BuildContext context, int index) {
                                        return Row(
                                          children: [
                                            Obx(
                                                  () => TriStateCheckbox(
                                                boxState:
                                                (controller.boxStateOfSizes?[index] ??
                                                    CheckboxState.UNCHECKED),
                                                onTap: () {
                                                  if (controller.boxStateOfSizes?[index] ==
                                                      CheckboxState.UNCHECKED) {
                                                    controller.boxStateOfSizes?[index] =
                                                        CheckboxState.CHECKED;
                                                  } else {
                                                    controller.boxStateOfSizes?[index] =
                                                        CheckboxState.UNCHECKED;
                                                  }
                                                },
                                              ),
                                            ),
                                            SizedBox(width: scale.getScaledWidth(6)),
                                            Text(
                                              (controller.size?[index] ?? ""),
                                              style: TextStyle(
                                                  color: LightTheme.darkBlack,
                                                  fontSize: scale.getScaledFont(8)),
                                              textScaleFactor:
                                              ScaleSize.textScaleFactor(context),
                                            ),
                                            const Spacer(),
                                            Text(
                                              "${controller.quantityOfEachSize?[index] ?? 0}",
                                              style: TextStyle(
                                                  color: LightTheme.darkBlack,
                                                  fontSize: scale.getScaledFont(8)),
                                              textScaleFactor:
                                              ScaleSize.textScaleFactor(context),
                                            ),
                                          ],
                                        );
                                      },
                                      itemCount:
                                      (controller.size?.length ?? 0),
                                      separatorBuilder: (BuildContext context, int index) => SizedBox(height: scale.getScaledHeight(15),)),
                                ),

                              ],
                            )
                          ],
                        ),
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
                        mainAxisSpacing: scale.getScaledWidth(18),
                        // Spacing between items along the main axis
                        crossAxisSpacing: scale.getScaledWidth(18),
                        //  // Spacing between items along the cross axis
                        childAspectRatio:
                            1, // Aspect ratio of each item (width/height)
                      ),
                      itemBuilder: (BuildContext context, int index) {
                        return GridTile(
                          child: InkWell(
                            onTap: () {
                              Get.toNamed(AppRoutes.product);
                            },
                            child: Container(
                              padding: scale.getPadding(all: 10),
                              decoration: BoxDecoration(
                                  border:
                                      Border.all(color: LightTheme.borderColor),
                                  borderRadius: BorderRadius.all(
                                      Radius.circular(
                                          scale.getScaledHeight(17)))),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  index % 2 == 0
                                      ? const Image(
                                          image: AssetImage(
                                              "assets/images/sh1.png"))
                                      : const Image(
                                          image: AssetImage(
                                              "assets/images/sh2.png")),
                                  Expanded(
                                    child: Padding(
                                      padding:
                                          scale.getPadding(top: 20, bottom: 10),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          index % 2 == 0
                                              ? Text(
                                                  "Hoka Sneakers",
                                                  style: TextStyle(
                                                      color:
                                                          LightTheme.bluetext,
                                                      fontSize: scale
                                                          .getScaledFont(9)),
                                                  textScaleFactor:
                                                      ScaleSize.textScaleFactor(
                                                          context),
                                                )
                                              : Text(
                                                  "Blue Shoes",
                                                  style: TextStyle(
                                                      color:
                                                          LightTheme.bluetext,
                                                      fontSize: scale
                                                          .getScaledFont(9)),
                                                  textScaleFactor:
                                                      ScaleSize.textScaleFactor(
                                                          context),
                                                ),
                                          Expanded(
                                            child: Row(
                                              children: [
                                                Text(
                                                  "\$ 11 /",
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      fontSize: scale
                                                          .getScaledFont(9)),
                                                  textScaleFactor:
                                                      ScaleSize.textScaleFactor(
                                                          context),
                                                ),
                                                Text(
                                                  " Per day",
                                                  style: TextStyle(
                                                      color:
                                                          LightTheme.greytext,
                                                      fontSize: scale
                                                          .getScaledFont(8)),
                                                  textScaleFactor:
                                                      ScaleSize.textScaleFactor(
                                                          context),
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
                                                  decoration: const BoxDecoration(
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
                )
              ],
            ))
          ],
        ),
      ),
    );
  }
}
