import 'package:alquila_tu_hobby/core/utils/app_style/app_style.dart';
import 'package:alquila_tu_hobby/core/utils/color_constants/color_constants.dart';
import 'package:alquila_tu_hobby/core/utils/scaling_util/scaling_utility.dart';
import 'package:alquila_tu_hobby/widgets/common_appbar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../controller/chat_screen_controller.dart';

class ChatScreen extends GetView<ChatScreenController> {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(ChatScreenController());
    final scale = Get.find<ScalingUtility>()..setCurrentDeviceSize(context);
    return Scaffold(
        appBar: AppBar(
          titleSpacing: 0,
          title: CommonAppBar(),
        ),
        body: Container(
            height: scale.fh,
            width: scale.fw,
            child: Row(
              children: [
                Container(
                  width: scale.getScaledWidth(400),
                  constraints: BoxConstraints(minWidth: 300, maxWidth: 420),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border(
                      right: BorderSide(
                        color: LightTheme
                            .grey1, // You can adjust the color and other properties as needed
                        width: 1.0, // Adjust the width as needed
                      ),
                    ),
                  ),
                  padding: scale.getPadding(left: 30),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        padding: scale.getPadding(top: 36, bottom: 6, left: 10),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              "Message",
                              style: AppStyle.txtNunitoBold20.copyWith(
                                color: LightTheme.darkBlack,
                                fontSize: 10,
                              ),
                              textScaleFactor:
                                  ScaleSize.textScaleFactor(context),
                            ),
                            Container(
                              margin: scale.getMargin(top: 9, left: 5),
                              height: scale.getScaledHeight(10),
                              width: scale.getScaledHeight(10),
                              child: Image.asset("assets/logos/dd.png"),
                            ),
                            Spacer(),
                            Container(
                              margin: scale.getMargin(right: 10),
                              height: scale.getScaledHeight(20),
                              width: scale.getScaledHeight(20),
                              child: Image.asset("assets/logos/add1.png"),
                            )
                          ],
                        ),
                      ),
                      Divider(
                        color: LightTheme.grey1,
                      ),
                      Container(
                        margin: scale.getMargin(left: 10, right: 30),
                        padding: scale.getPadding(horizontal: 8, vertical: 4),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(
                                Radius.circular(scale.getScaledFont(17))),
                            color: LightTheme.grey2),
                        child: TextFormField(
                          decoration: const InputDecoration(
                            border: InputBorder.none,
                            hintText: 'Search Message',
                          ),
                          // Add onChanged to update product name variable
                        ),
                      ),
                      SizedBox(
                        height: scale.getScaledHeight(10),
                      ),
                      Expanded(
                        child: ListView.builder(
                            shrinkWrap: true,
                            itemCount: controller.data.length,
                            itemBuilder: (context, i) {
                              return Obx(
                                () => InkWell(
                                  onTap: () {
                                    controller.selectedCahat.value = i;
                                  },
                                  child: Container(
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(
                                                scale.getScaledFont(10))),
                                        color:
                                            controller.selectedCahat.value == i
                                                ? LightTheme.adminbg
                                                : Colors.transparent),
                                    margin:
                                        scale.getMargin(right: 32, bottom: 10),
                                    padding: scale.getPadding(
                                        left: 8,
                                        right: 12,
                                        top: 10,
                                        bottom: 10),
                                    child: Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                          constraints: BoxConstraints(
                                              maxHeight: 50, maxWidth: 50),
                                          height: scale.getScaledHeight(50),
                                          width: scale.getScaledHeight(50),
                                          decoration: BoxDecoration(
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(
                                                      scale.getScaledFont(10))),
                                              color: LightTheme.grey1,
                                              image: i % 2 == 0
                                                  ? DecorationImage(
                                                      image: AssetImage(
                                                          "assets/images/dd.jpeg"),
                                                      fit: BoxFit.cover)
                                                  : DecorationImage(
                                                      image: AssetImage(
                                                          "assets/images/dp1.png"),
                                                      fit: BoxFit.cover)),
                                        ),
                                        SizedBox(
                                          width: scale.getScaledWidth(14),
                                        ),
                                        Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              controller.data[i]["name"] ?? "",
                                              style: AppStyle.txtNunitoBold20
                                                  .copyWith(
                                                color: LightTheme.darkBlack,
                                                fontSize: 8,
                                              ),
                                              textScaleFactor:
                                                  ScaleSize.textScaleFactor(
                                                      context),
                                            ),
                                            Text(
                                              controller.data[i]
                                                      ["lastmessage"] ??
                                                  "",
                                              style: AppStyle.txtNunitoBold20
                                                  .copyWith(
                                                fontWeight: FontWeight.bold,
                                                color: LightTheme.greytext,
                                                fontSize: 6.5,
                                              ),
                                              textScaleFactor:
                                                  ScaleSize.textScaleFactor(
                                                      context),
                                            ),
                                          ],
                                        ),
                                        Spacer(),
                                        Padding(
                                          padding: scale.getPadding(top: 5),
                                          child: Text(
                                            "5m",
                                            style: AppStyle.txtNunitoBold20
                                                .copyWith(
                                              fontWeight: FontWeight.bold,
                                              color: LightTheme.greytext,
                                              fontSize: 8,
                                            ),
                                            textScaleFactor:
                                                ScaleSize.textScaleFactor(
                                                    context),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              );
                            }),
                      )
                    ],
                  ),
                ),
                Container(
                  height: scale.fh,
                  width: scale.fw / 1.5,
                  constraints: BoxConstraints(maxWidth: 1200),
                  padding: scale.getPadding(left: 40),
                  child: Column(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(
                              Radius.circular(scale.getScaledFont(10))),
                        ),
                        margin: scale.getMargin(right: 32, bottom: 10),
                        padding: scale.getPadding(
                            left: 25, right: 12, top: 10, bottom: 10),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              constraints:
                                  BoxConstraints(maxHeight: 50, maxWidth: 50),
                              height: scale.getScaledHeight(50),
                              width: scale.getScaledHeight(50),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.all(
                                      Radius.circular(scale.getScaledFont(10))),
                                  color: LightTheme.grey1,
                                  image: DecorationImage(
                                      image:
                                          AssetImage("assets/images/dd.jpeg"),
                                      fit: BoxFit.cover)),
                            ),
                            SizedBox(
                              width: scale.getScaledWidth(14),
                            ),
                            Padding(
                              padding: scale.getPadding(top: 5),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Johnn wick",
                                    style: AppStyle.txtNunitoBold20.copyWith(
                                      color: LightTheme.darkBlack,
                                      fontSize: 10,
                                    ),
                                    textScaleFactor:
                                        ScaleSize.textScaleFactor(context),
                                  ),
                                  Row(
                                    children: [
                                      Container(
                                        margin: scale.getMargin(right: 10),
                                        height: scale.getScaledHeight(8),
                                        width: scale.getScaledHeight(8),
                                        decoration: BoxDecoration(
                                            color: Colors.green,
                                            shape: BoxShape.circle),
                                      ),
                                      Text(
                                        "Online",
                                        style:
                                            AppStyle.txtNunitoBold20.copyWith(
                                          fontWeight: FontWeight.bold,
                                          color: LightTheme.greytext,
                                          fontSize: 6,
                                        ),
                                        textScaleFactor:
                                            ScaleSize.textScaleFactor(context),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Center(
                        child: Container(
                          margin: scale.getMargin(right: 200),
                          height: 1,
                          // width: scale.getScaledWidth(700),
                          color: LightTheme.greylight10,
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: scale.getPadding(left: 25, right: 100),
                          child: ListView.builder(
                              reverse: true,
                              shrinkWrap: true,
                              itemCount: controller.messageedata.length,
                              itemBuilder: (context, i) {
                                return controller.messageedata[i]["id"] != "me"
                                    ? Container(
                                        margin: scale.getMargin(vertical: 20),
                                        child: Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Container(
                                              constraints: BoxConstraints(
                                                  maxHeight: 50, maxWidth: 50),
                                              height: scale.getScaledHeight(50),
                                              width: scale.getScaledHeight(50),
                                              decoration: BoxDecoration(
                                                  borderRadius: BorderRadius
                                                      .all(Radius.circular(scale
                                                          .getScaledFont(10))),
                                                  image: DecorationImage(
                                                      image: AssetImage(
                                                          "assets/images/dd.jpeg"),
                                                      fit: BoxFit.cover)),
                                            ),
                                            Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                for (int j = 0;
                                                    j <
                                                        controller
                                                            .messageedata[i]
                                                                ['time']
                                                            .length;
                                                    j++)
                                                  Container(
                                                    margin: scale.getMargin(
                                                        bottom: 6, left: 10),
                                                    padding: scale.getPadding(
                                                        vertical: 7,
                                                        horizontal: 10),
                                                    decoration: BoxDecoration(
                                                        borderRadius: BorderRadius
                                                            .all(Radius
                                                                .circular(scale
                                                                    .getScaledFont(
                                                                        10))),
                                                        color:
                                                            LightTheme.grey1),
                                                    child: Text(controller
                                                            .messageedata[i]
                                                        ['time'][j]),
                                                  )
                                              ],
                                            )
                                          ],
                                        ),
                                      )
                                    : Padding(
                                        padding: scale.getPadding(right: 20),
                                        child: Row(
                                          children: [
                                            Spacer(),
                                            Container(
                                              margin:
                                                  scale.getMargin(vertical: 20),
                                              child: Row(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment.end,
                                                    children: [
                                                      for (int j = 0;
                                                          j <
                                                              controller
                                                                  .messageedata[
                                                                      i]['time']
                                                                  .length;
                                                          j++)
                                                        Container(
                                                          margin:
                                                              scale.getMargin(
                                                                  bottom: 6,
                                                                  right: 10),
                                                          padding:
                                                              scale.getPadding(
                                                                  vertical: 7,
                                                                  horizontal:
                                                                      10),
                                                          decoration: BoxDecoration(
                                                              borderRadius: BorderRadius.all(
                                                                  Radius.circular(
                                                                      scale.getScaledFont(
                                                                          10))),
                                                              color: LightTheme
                                                                  .mychat),
                                                          child: Text(
                                                            controller
                                                                    .messageedata[
                                                                i]['time'][j],
                                                            style: TextStyle(
                                                                color: Colors
                                                                    .white),
                                                          ),
                                                        )
                                                    ],
                                                  ),
                                                  Container(
                                                    constraints: BoxConstraints(
                                                        maxHeight: 50,
                                                        maxWidth: 50),
                                                    height: scale
                                                        .getScaledHeight(50),
                                                    width: scale
                                                        .getScaledHeight(50),
                                                    decoration: BoxDecoration(
                                                        borderRadius: BorderRadius
                                                            .all(Radius
                                                                .circular(scale
                                                                    .getScaledFont(
                                                                        10))),
                                                        image: DecorationImage(
                                                            image: AssetImage(
                                                                "assets/images/dp1.png"),
                                                            fit: BoxFit.cover)),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      );
                              }),
                        ),
                      ),
                      Container(
                        margin: scale.getMargin(bottom: 17, right: 100),
                        width: scale.fw / 1.5,
                        constraints: BoxConstraints(maxWidth: 1000),
                        child: TextFormField(
                          decoration: InputDecoration(
                            suffixIcon: Container(
                              width: scale.getScaledWidth(50),
                              child: Row(
                                children: [
                                  Container(
                                    padding: scale.getPadding(all: 9),
                                    constraints: BoxConstraints(
                                        minHeight: 40, minWidth: 40),
                                    height: scale.getScaledHeight(30),
                                    child: Image.asset("assets/logos/send.png"),
                                  )
                                ],
                              ),
                            ),
                            filled: true,
                            fillColor: LightTheme.grey2,
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.all(
                                    Radius.circular(scale.getScaledFont(20))),
                                borderSide:
                                    BorderSide(color: LightTheme.greylight10)),
                            focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.all(
                                    Radius.circular(scale.getScaledFont(20))),
                                borderSide:
                                    BorderSide(color: LightTheme.greylight10)),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.all(
                                    Radius.circular(scale.getScaledFont(20))),
                                borderSide:
                                    BorderSide(color: LightTheme.greylight10)),
                            hintText: 'Type a meessage',
                          ),
                          // Add onChanged to update product name variable
                        ),
                      ),
                    ],
                  ),
                )
              ],
            )));
  }
}
