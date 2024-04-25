import 'package:alquila_tu_hobby/core/utils/app_style/app_style.dart';
import 'package:alquila_tu_hobby/core/utils/color_constants/color_constants.dart';
import 'package:alquila_tu_hobby/core/utils/math_utils/math_util.dart';
import 'package:alquila_tu_hobby/core/utils/scaling_util/scaling_utility.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

class CustomTextFormField extends StatelessWidget {
  CustomTextFormField({
    this.enabled = true,
    this.maxLength,
    this.maxLines,
    this.textInputFormatter,
    this.alignment,
    this.height,
    this.width,
    this.margin,
    this.controller,
    this.focusNode,
    this.isObscureText = false,
    this.textInputAction = TextInputAction.next,
    this.hintText,
    this.prefix,
    this.prefixConstraints,
    this.suffix,
    this.suffixConstraints,
    this.validator,
    this.keyboardType,
    this.capitalization = TextCapitalization.none,
    this.readOnly = false,
    this.textCounter = null,
    this.onEditingComplete,
    this.onChanged,
    this.autoFocus = false,
    this.autovalidateMode,
    this.key,
    this.onTap,
    this.custom = false,
    this.showCursor = true,
    this.textAlign = TextAlign.start,
    this.hintTextStyle = const TextStyle(color: LightTheme.hintTextColor),
    this.errorMaxLines,
    this.onTapOutside,
    this.cursorColor,
  });

  TextStyle hintTextStyle;
  bool custom;
  List<TextInputFormatter>? textInputFormatter;
  GlobalKey? key;
  bool enabled;

  Alignment? alignment;

  int? maxLines;

  double? width;

  double? height;

  EdgeInsetsGeometry? margin;

  TextEditingController? controller;

  int? maxLength;

  FocusNode? focusNode;

  bool? isObscureText;

  TextInputAction? textInputAction;

  String? hintText;

  Widget? prefix;

  BoxConstraints? prefixConstraints;

  Widget? suffix;

  BoxConstraints? suffixConstraints;

  FormFieldValidator<String>? validator;

  TextInputType? keyboardType = TextInputType.text;

  TextCapitalization capitalization;

  VoidCallback? onEditingComplete;
  Function(String)? onChanged;

  bool? readOnly;
  bool? showCursor;

  VoidCallback? onTap;
  TextAlign? textAlign;

  bool autoFocus;

  Rx<int>? textCounter;

  Color? cursorColor;

  AutovalidateMode? autovalidateMode;
  int? errorMaxLines = 1;

  Function(PointerDownEvent)? onTapOutside;

  @override
  Widget build(BuildContext context) {
    final scale = Get.find<ScalingUtility>()..setCurrentDeviceSize(context);
    return alignment != null
        ? Align(
      alignment: alignment ?? Alignment.center,
      child: _buildTextFormFieldWidget(scale),
    )
        : _buildTextFormFieldWidget(scale);
  }

  _buildTextFormFieldWidget(scale) {
    return Container(
      width: getHorizontalSize(width ?? 0),
      margin: margin,
      child: TextFormField(
        enableInteractiveSelection: true,
        enabled: enabled,
        textAlign: textAlign ?? TextAlign.start,
        key: key,
        onTap: onTap,
        maxLength: maxLength,
        maxLines: maxLines,
        inputFormatters: textInputFormatter,
        controller: controller,
        focusNode: focusNode,
        style: AppStyle.txtNunitoRegular12,
        obscuringCharacter: '•',
        obscureText: isObscureText!,
        textInputAction: textInputAction,
        decoration: _buildDecoration(scale),
        validator: validator,
        autofocus: autoFocus,
        keyboardType: keyboardType,
        textCapitalization: capitalization,
        autovalidateMode: autovalidateMode,
        readOnly: readOnly!,
        showCursor: showCursor,
        onEditingComplete: onEditingComplete ?? () {},
        onTapOutside: onTapOutside ??
                (e) {
              FocusScope.of(Get.context!).unfocus();
            },
        onChanged: (value) {
          if (textCounter != null) {
            textCounter!.value = value.length;
          }
          onChanged != null ? onChanged!(value) : () {};
        },
        cursorColor: cursorColor,
      ),
    );
  }

  _buildDecoration(scale) {
    return InputDecoration(
      hintText: hintText ?? "",
      hintStyle: hintTextStyle,
      counterText: "",
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(6),
        borderSide: const BorderSide(
          color: LightTheme.borderColor,
          width: 1,
        ),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(6),
        borderSide: BorderSide(
          color: LightTheme.borderColor,
        ),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(6),
        borderSide: BorderSide(
          color: LightTheme.borderColor,
          width: 1.0,
        ),
      ),
      prefixIcon: prefix,
      prefixIconConstraints: prefixConstraints,
      suffixIcon: suffix,
      suffixIconConstraints: suffixConstraints,
      fillColor: LightTheme.borderFillColor,
      filled: true,
      isDense: true,
      contentPadding: scale.getPadding(top: 16, bottom: 16, left: 12, right: 12),
      errorStyle: AppStyle.txtNunitoRegular12Red,
      errorMaxLines: errorMaxLines,
      errorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(6),
        borderSide: BorderSide(
          color: LightTheme.errorColor,
          width: 1,
        ),
      ),
      focusedErrorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(6),
        borderSide: BorderSide(
          color: LightTheme.errorColor,
          width: 1,
        ),
      ),
    );
  }}