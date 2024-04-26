import 'package:alquila_tu_hobby/core/utils/color_constants/color_constants.dart';
import 'package:alquila_tu_hobby/core/utils/scaling_util/scaling_utility.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TriStateCheckbox extends StatefulWidget {
  TriStateCheckbox({super.key, required this.boxState, this.onTap, this.margin, this.height, this.width});

  CheckboxState boxState;
  VoidCallback? onTap;
  EdgeInsetsGeometry? margin;
  double? height;
  double? width;

  @override
  State<TriStateCheckbox> createState() => _TriStateCheckboxState();
}

class _TriStateCheckboxState extends State<TriStateCheckbox> {
  @override
  Widget build(BuildContext context) {
    final scale = Get.find<ScalingUtility>()..setCurrentDeviceSize(context);
    if (widget.boxState == CheckboxState.UNCHECKED) {
      return InkWell(
        onTap: widget.onTap ?? (){},
        child: AnimatedContainer(
          height: widget.height ?? 22,
          width: widget.width ?? 22,
          duration: const Duration(milliseconds: 500),
          curve: Curves.fastLinearToSlowEaseIn,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5.0),
              color: LightTheme.white,
              border: Border.all(color: LightTheme.borderColor)),
        ),
      );
    } else if (widget.boxState == CheckboxState.DASH) {
      return InkWell(
        onTap: widget.onTap ?? (){},
        child: AnimatedContainer(
            height: widget.height ?? 22,
            width: widget.width ?? 22,
            duration: const Duration(milliseconds: 500),
            curve: Curves.fastLinearToSlowEaseIn,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5.0),
                color: LightTheme.white,
                border: Border.all(color: LightTheme.borderColor)),
            child: const Icon(
              Icons.horizontal_rule,
              color: LightTheme.borderColor,
              size: 14,
            )),
      );
    } else if (widget.boxState == CheckboxState.GREY_CHECKED) {
      return InkWell(
        onTap: widget.onTap ?? (){},
        child: AnimatedContainer(
            height: widget.height ?? 22,
            width: widget.width ?? 22,
            duration: const Duration(milliseconds: 500),
            curve: Curves.fastLinearToSlowEaseIn,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5.0),
                color: LightTheme.white,
                border: Border.all(color: LightTheme.borderColor)),
            child: const Icon(
              Icons.check,
              color: LightTheme.borderColor,
              size: 14,
            )),
      );
    } else {
      return InkWell(
        onTap: widget.onTap ?? (){},
        child: AnimatedContainer(
            height: widget.height ?? 22,
            width: widget.width ?? 22,
            duration: const Duration(milliseconds: 500),
            curve: Curves.fastLinearToSlowEaseIn,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5.0),
                color: LightTheme.white,
                border: Border.all(color: LightTheme.borderColor)),
            child: const Icon(
              Icons.check,
              color: LightTheme.borderColor,
              size: 14,
            )),
      );
    }
  }
}

enum CheckboxState {
  UNCHECKED,
  CHECKED,
  GREY_CHECKED,
  DASH
}