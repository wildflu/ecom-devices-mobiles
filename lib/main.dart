import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pcecommerce/domain/theme/theme_controller.dart';
import 'package:pcecommerce/presontation/pages/app.dart';

void main() {
  runApp( GetMaterialApp(
    theme: ThemeController.currantTheme,
    home: const App(),
  ));
}
