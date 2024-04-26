import 'package:alquila_tu_hobby/core/utils/app_style/app_style.dart';
import 'package:alquila_tu_hobby/core/utils/color_constants/color_constants.dart';
import 'package:alquila_tu_hobby/core/utils/scaling_util/scaling_utility.dart';
import 'package:alquila_tu_hobby/widgets/common_appbar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class chatScreen extends StatelessWidget {
  const chatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final scale = Get.find<ScalingUtility>()..setCurrentDeviceSize(context);
    return Scaffold(
        body: Container(
            height: scale.fh,
            width: scale.fw,
            child: Column(children: [
              const CommonAppBar(),
              Expanded(
                child: Row(
                  children: [
                    Expanded(
                      flex: 2,
                      child: Container(
                        decoration: BoxDecoration(
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
                              padding: scale.getPadding(
                                  top: 36, bottom: 6, left: 10),
                              child: Text(
                                "Meessage",
                                style: AppStyle.txtNunitoBold20.copyWith(
                                  color: LightTheme.darkBlack,
                                  fontSize: 10,
                                ),
                                textScaleFactor:
                                    ScaleSize.textScaleFactor(context),
                              ),
                            ),
                            Divider(
                              color: LightTheme.grey1,
                            ),
                            Expanded(
                              child: ListView.builder(
                                  shrinkWrap: true,
                                  itemCount: 100,
                                  itemBuilder: (context, i) {
                                    return Text("data");
                                  }),
                            )
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 6,
                      child: Container(
                        padding: scale.getPadding(left: 10),
                        child: Column(
                          children: [
                            Expanded(
                              child: ListView.builder(
                                  shrinkWrap: true,
                                  itemCount: 100,
                                  itemBuilder: (context, i) {
                                    return Text("data");
                                  }),
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              )
              // Expanded(
              //     child: Container(
              //   color: Colors.red,
              //   padding:
              //       scale.getPadding(left: 60, right: 60, top: 40, bottom: 20),
              // ))
            ])));
  }
}
