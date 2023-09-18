import 'package:flutter/material.dart';

class Helper {

  static const paddingAll = EdgeInsets.all(16);

  static sized({double? width, double? height}) => SizedBox(width: width ?? 10, height: height ?? 10);

}


class MyDecoration{
  static BoxDecoration decoration({Color? color, double? radius}){
    return BoxDecoration(
      borderRadius: BorderRadius.circular(radius ?? 8),
      color: color ?? Colors.white,
    );
  }
}