

import 'package:get/get.dart';

class NotificationController extends GetxController{
  bool notificationStatus = false;

  notificationSwitchStatus() {
    notificationStatus = !notificationStatus;
    update();
  }
}