import 'package:flutter/cupertino.dart';

import '../const/color/color.dart';

class StringStyle{
  static TextStyle h1({
    double?fontSize,Color?color,FontWeight?fontWeight}){
    return TextStyle(
      fontSize: fontSize??26,
      fontWeight: fontWeight??FontWeight.bold,
      color: color??AppColor.white,
    );
  }
}