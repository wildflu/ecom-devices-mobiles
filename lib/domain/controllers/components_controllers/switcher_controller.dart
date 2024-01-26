

import 'package:get/get.dart';

class SwitcherController extends GetxController {

  String language = 'AR';
  double left = 1;
  double right = 80;

  switchTo(String lang) {
    switch (lang) {
      case 'AR':
        left = 1;
        right = 80;
        break;
      case 'EN':
        left = 40;
        right = 40;
      default:
        left = 80;
        right = 1;
    }
    language = lang;
    update();
  }

}