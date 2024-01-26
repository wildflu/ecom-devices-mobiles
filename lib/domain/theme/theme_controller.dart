
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pcecommerce/domain/theme/theme_data.dart';

class ThemeController extends GetxController {
  static ThemeData currantTheme = Themes.custumLight;
  
  double left = 0;
  double right = 48;

  chaingeTheme() {
    if(left == 0) {
      left = 48;
      right = 0;
    }else {
      left = 0;
      right = 48;
    }
    update();
  }

}