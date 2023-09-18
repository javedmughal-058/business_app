
import 'package:business_app/constant/helper.dart';
import 'package:flutter/cupertino.dart';

class CustomButton extends StatelessWidget {
  final Function() onTap;
  final double height;
  final double width;
  final TextStyle style;
  final String text;
  final Color bgColor;
  final double? radius;

  const CustomButton({super.key,
    required this.onTap, required this.height, required this.width, required this.style, required this.text, required this.bgColor, required this.radius, });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(radius ?? 5),
          color: bgColor,
        ),
        padding: Helper.paddingAll/2,
        height: height,
        width: width,
        child: Text(text, style: style),
      ),
    );
  }
}
