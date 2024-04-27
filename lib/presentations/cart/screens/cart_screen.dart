import 'package:alquila_tu_hobby/core/utils/app_style/app_style.dart';
import 'package:alquila_tu_hobby/core/utils/color_constants/color_constants.dart';
import 'package:alquila_tu_hobby/core/utils/scaling_util/scaling_utility.dart';
import 'package:alquila_tu_hobby/widgets/common_appbar.dart';
import 'package:alquila_tu_hobby/widgets/custom_text_formfield.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';


class CartScreen extends StatelessWidget {
  CartScreen({super.key});
  final List<Map<String, dynamic>> products = [
    {
      'name': 'Black Sneaker',
      'color': 'Green',
      'size': "30",
      'price': "11",
      'days': "1",
      "st": "1" // Replace with your image path
    },
    {
      'name': 'Black Sneaker',
      'color': 'Green',
      'size': "30",
      'price': "11",
      'days': "1",
      "st": "1" // Replace with your image path
    },
    {
      'name': 'Black Sneaker',
      'color': 'Green',
      'size': "30",
      'price': "11",
      'days': "1",
      "st": "1" // Replace with your image path
    },
    // Add more products as needed...
  ];
  @override
  Widget build(BuildContext context) {
    Get.put(ScalingUtility());
    final scale = Get.find<ScalingUtility>()..setCurrentDeviceSize(context);
    return Scaffold(
        body: Container(
            height: scale.fh,
            width: scale.fw,
            child: Column(children: [
              CommonAppBar(),
              Row(
                children: [
                  Expanded(
                    child: Container(

                      margin: scale.getMargin(left: 120, top: 50),
                      child: Column(
                        children: [
                          Table(
                            children: [
                              // Header Row (no border)
                              TableRow(
                                decoration: BoxDecoration(
                                    color: LightTheme.cartab,
                                    borderRadius: BorderRadius.all(
                                        Radius.circular(
                                            scale.getScaledFont(6)))),
                                children: [
                                  _buildTableCell('Product', scale, context,
                                      isHeader: true),
                                  _buildTableCell('price', scale, context,
                                      isHeader: true),
                                  _buildTableCell('Days', scale, context,
                                      isHeader: true),
                                  _buildTableCell('Subtotal', scale, context,
                                      isHeader: true),
                                ],
                              ),

                              // Data Rows
                              ...products.map((product) => TableRow(
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
                                      CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                          child: Image.asset(
                                              "assets/images/sh1.png",
                                              height: scale
                                                  .getScaledHeight(50)),
                                        ),
                                        SizedBox(
                                          width: scale.getScaledWidth(10),
                                        ),
                                        Padding(
                                          padding: scale.getPadding(
                                              bottom: 17),
                                          child: Column(
                                            crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                product['name'],
                                                maxLines: 1,
                                                overflow:TextOverflow.clip,
                                                style: AppStyle
                                                    .txtNunitoBold20
                                                    .copyWith(
                                                    fontSize: 8,
                                                    color: LightTheme
                                                        .bluetext),
                                                textScaleFactor: ScaleSize
                                                    .textScaleFactor(
                                                    context),
                                              ),
                                              Text(
                                                // ignore: prefer_interpolation_to_compose_strings
                                                "Color: " +
                                                    product['color'],
                                                style: AppStyle
                                                    .txtNunitoBold20
                                                    .copyWith(
                                                    fontWeight:
                                                    FontWeight
                                                        .bold,
                                                    fontSize: 7,
                                                    color: LightTheme
                                                        .darkBlack),
                                                textScaleFactor: ScaleSize
                                                    .textScaleFactor(
                                                    context),
                                              ),
                                              Text(
                                                // ignore: prefer_interpolation_to_compose_strings
                                                "Size: " +
                                                    product['size'],
                                                style: AppStyle
                                                    .txtNunitoBold20
                                                    .copyWith(
                                                    fontWeight:
                                                    FontWeight
                                                        .bold,
                                                    fontSize: 7,
                                                    color: LightTheme
                                                        .darkBlack),
                                                textScaleFactor: ScaleSize
                                                    .textScaleFactor(
                                                    context),
                                              ),
                                            ],
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                  _buildTableCell(
                                      product['price'], scale, context),
                                  _buildTableCell(
                                      product['days'], scale, context),
                                  _buildTableCell(
                                      product['st'].toString(),
                                      scale,
                                      context),
                                ],
                              )),
                            ],
                          ),
                          SizedBox(height: scale.getScaledHeight(10),),

                          Row(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                    color: LightTheme.yellowBG,
                                    borderRadius: BorderRadius.all(
                                        Radius.circular(
                                            scale.getScaledHeight(23)))),
                                padding: scale.getPadding(
                                    horizontal: 35, vertical: 15),
                                child: Center(
                                  child: Text(
                                    "Continue shoping",
                                    style: AppStyle.txtNunitoBold20.copyWith(
                                        fontSize: 10, color: Colors.white),
                                    textScaleFactor:
                                    ScaleSize.textScaleFactor(context),
                                  ),
                                ),
                              ),
                              Spacer(),
                              Container(
                                decoration: BoxDecoration(
                                    border: Border.all(color: Colors.red),
                                    borderRadius: BorderRadius.all(
                                        Radius.circular(
                                            scale.getScaledHeight(23)))),
                                padding: scale.getPadding(
                                    horizontal: 35, vertical: 15),
                                child: Center(
                                  child: Text(
                                    "Clear cart",
                                    style: AppStyle.txtNunitoBold20.copyWith(
                                        fontSize: 10, color: Colors.red),
                                    textScaleFactor:
                                    ScaleSize.textScaleFactor(context),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    width: scale.getScaledWidth(300),
                    decoration: BoxDecoration(
                        border: Border.all(color: LightTheme.greylight10)),
                    margin: scale.getMargin(left: 20, top: 50, right: 120),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // Title
                        Center(
                          child: Container(
                            padding: scale.getPadding(
                                horizontal: 10, vertical: 14),

                            color: LightTheme.cartab,
                            child: Center(
                              child: Text(
                                'Total',
                                style: AppStyle.txtNunitoBold20.copyWith(
                                    fontSize: 10,
                                    color: LightTheme.darkBlack),
                                textScaleFactor:
                                ScaleSize.textScaleFactor(context),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: scale.getPadding(horizontal: 30),
                          child: Column(
                            children: [
                              SizedBox(height: scale.getScaledHeight(16)),

                              // Subtotal
                              Row(
                                mainAxisAlignment:
                                MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Subtotal',
                                    style: AppStyle.txtNunitoBold20
                                        .copyWith(
                                        fontSize: 9,
                                        color: LightTheme.darkBlack),
                                    textScaleFactor:
                                    ScaleSize.textScaleFactor(context),
                                  ),
                                  Text(
                                    '\$ 33.20',
                                    style: AppStyle.txtNunitoBold20
                                        .copyWith(
                                        fontSize: 11,
                                        fontWeight: FontWeight.bold,
                                        color: LightTheme.darkBlack),
                                    textScaleFactor:
                                    ScaleSize.textScaleFactor(context),
                                  ),
                                ],
                              ),
                              Padding(
                                padding: scale.getPadding(
                                    horizontal: 20, vertical: 18),
                                child: Divider(),
                              ),

                              // Coupon Code Input
                              AspectRatio(
                                aspectRatio: 5,
                                child: TextFormField(

                                  decoration: InputDecoration(
                                      suffixIcon: Container(
                                          width: scale.getScaledWidth(60),
                                          child: Center(
                                              child: Text(
                                                "Apply",
                                                textScaleFactor:
                                                ScaleSize.textScaleFactor(
                                                    context),
                                                style: AppStyle.txtNunitoBold20
                                                    .copyWith(
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 7,
                                                    color: LightTheme.bluetext),
                                              ))),
                                      filled: true,
                                      fillColor: LightTheme.grey2,
                                      contentPadding: scale.getPadding(left: 10),
                                      enabledBorder: OutlineInputBorder(

                                          borderRadius: BorderRadius.all(
                                              Radius.circular(
                                                  scale.getScaledFont(20))),
                                          borderSide: BorderSide(
                                              color: LightTheme.greylight10)),
                                      focusedBorder: OutlineInputBorder(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(
                                                  scale.getScaledFont(20))),
                                          borderSide: BorderSide(
                                              color: LightTheme.greylight10)),
                                      border: OutlineInputBorder(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(
                                                  scale.getScaledFont(20))),
                                          borderSide: BorderSide(
                                              color: LightTheme.greylight10)),
                                      hintText: "Weekend24",
                                      hintStyle: TextStyle(fontSize: scale.getScaledFont(15))

                                  ),
                                  // Add onChanged to update product name variable
                                ),
                              ),
                              Padding(
                                padding: scale.getPadding(
                                    horizontal: 20, vertical: 18),
                                child: Divider(),
                              ),

                              // Country Selection
                              AspectRatio(
                                aspectRatio: 5,
                                child: DropdownButtonFormField(
                                  decoration: InputDecoration(
                                      contentPadding: scale.getPadding(left: 10),
                                      enabledBorder: OutlineInputBorder(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(
                                                  scale.getScaledFont(15))),
                                          borderSide: BorderSide(
                                              color: LightTheme.greylight10)),
                                      focusedBorder: OutlineInputBorder(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(
                                                  scale.getScaledFont(15))),
                                          borderSide: BorderSide(
                                              color: LightTheme.greylight10)),
                                      border: OutlineInputBorder(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(
                                                  scale.getScaledFont(15))),
                                          borderSide: BorderSide(
                                              color: LightTheme.greylight10)),
                                      hintText: 'Enter product name',
                                      helperStyle: TextStyle(fontSize: scale.getScaledFont(15))
                                  ),
                                  value:
                                  'Shoes', // Set initial value (replace with your data)
                                  items: [
                                    'Shoes',
                                    'Electronics',
                                    'Clothing', /* Add more options */
                                  ]
                                      .map((category) => DropdownMenuItem(
                                    value: category,
                                    child: Text(category),
                                  ))
                                      .toList(),
                                  onChanged: (value) {
                                    // Update category variable
                                  },
                                ),
                              ),
                              SizedBox(height: scale.getScaledHeight(24)),

                              // Total Amount
                              Row(
                                mainAxisAlignment:
                                MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Total amount',
                                    style: AppStyle.txtNunitoBold20
                                        .copyWith(
                                        fontSize: 9,
                                        fontWeight: FontWeight.bold,
                                        color: LightTheme.darkBlack),
                                    textScaleFactor:
                                    ScaleSize.textScaleFactor(context),
                                  ),
                                  Text(
                                    '\$ 33.20',
                                    style: AppStyle.txtNunitoBold20
                                        .copyWith(
                                        fontSize: 10,
                                        fontWeight: FontWeight.bold,
                                        color: LightTheme.darkBlack),
                                    textScaleFactor:
                                    ScaleSize.textScaleFactor(context),
                                  ),
                                ],
                              ),
                              SizedBox(height: scale.getScaledHeight(24)),
                              Container(
                                decoration: BoxDecoration(
                                    color: LightTheme.yellowBG,
                                    borderRadius: BorderRadius.all(
                                        Radius.circular(
                                            scale.getScaledHeight(23)))),
                                padding: scale.getPadding(
                                    horizontal: 16, vertical: 10),
                                child: Center(
                                  child: Text(
                                    "Proceed to checkout",
                                    maxLines: 1,
                                    overflow: TextOverflow.clip,
                                    style: AppStyle.txtNunitoBold20
                                        .copyWith(
                                        fontSize: 9,
                                        color: Colors.white),
                                    textScaleFactor:
                                    ScaleSize.textScaleFactor(context),
                                  ),
                                ),
                              ),
                              SizedBox(height: scale.getScaledHeight(12)),
                              // Proceed to Checkout Button
                            ],
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),


              // Expanded(
              //     child: Container(
              //   color: Colors.red,
              //   padding:
              //       scale.getPadding(left: 60, right: 60, top: 40, bottom: 20),
              // ))
            ])));
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
            maxLines: 1,
            overflow:TextOverflow.clip,
            text,
            textScaleFactor: ScaleSize.textScaleFactor(context),
            style: isHeader
                ? AppStyle.txtNunitoBold20
                .copyWith(fontSize: 10, color: LightTheme.darkBlack)
                : AppStyle.txtNunitoBold20
                .copyWith(fontSize: 7, color: LightTheme.greytext),
          ),
        ),
      ),
    );
  }
}