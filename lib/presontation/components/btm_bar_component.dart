


import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:pcecommerce/domain/controllers/app_controller/bottom_bar_controller.dart';

class BtmBarComponent extends StatelessWidget {
  const BtmBarComponent({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GetBuilder<BottomBarController>(
      init: BottomBarController(),
      builder: (controller) {
        return Container(
          padding: const EdgeInsets.all(15),
          child: GNav(
            onTabChange: (value) => controller.navigateTo(value),
            haptic: true, 
            duration: const Duration(milliseconds: 900), 
            gap: 8, 
            color: Colors.grey[800],
            activeColor: Colors.blue,
            iconSize: 24,
            tabBackgroundColor: Colors.black12,
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            tabs: const [
              GButton(
                icon: Icons.home,
                text: 'Home',
              ),
              GButton(
                icon: Icons.notifications_none_outlined,
                text: 'notification',
              ),
              GButton(
                icon: Icons.shopping_bag_outlined,
                text: 'My Bag',
              ),
              GButton(
                icon: Icons.settings_outlined,
                text: 'Settings',
              ),
            ]
          ),
        );
      }
    );
  }
}