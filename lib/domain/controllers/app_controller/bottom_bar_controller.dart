

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pcecommerce/presontation/pages/home_page.dart';
import 'package:pcecommerce/presontation/pages/mybag_page.dart';
import 'package:pcecommerce/presontation/pages/notification_page.dart';
import 'package:pcecommerce/presontation/pages/profile_page.dart';
import 'package:pcecommerce/presontation/pages/settings_page.dart';

class BottomBarController extends GetxController {
  
  int currantPage = 0;

  List<Widget> homeIndexes = [
    const HomePage(),
    const NotificationPage(),
    const MyBarPage(),
    const SettingsPage(),
    const ProfilePage(),
  ];

  navigateTo(int index){
    currantPage = index;
    update();
  }
}