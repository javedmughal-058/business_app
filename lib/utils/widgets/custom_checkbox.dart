import 'package:business_app/constant/helper.dart';
import 'package:flutter/material.dart';

class CustomCheckBox extends StatelessWidget {
  final Function() onTap;
  final double height;
  final double width;
  final Color iconColor;
  final Color bgColor;

  const CustomCheckBox({super.key,
    required this.onTap, required this.height,
    required this.width, required this.iconColor, required this.bgColor});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
          color: bgColor,
          borderRadius: BorderRadius.circular(5),
        ),
        padding: Helper.paddingAll/4,
        child: Icon(Icons.check, color: iconColor),
      ),
    );
  }
}
