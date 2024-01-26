

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pcecommerce/domain/controllers/app_controller/bottom_bar_controller.dart';
import 'package:pcecommerce/presontation/components/btm_bar_component.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      body: GetBuilder<BottomBarController>(
        init: BottomBarController(),
        builder: (controller) => controller.homeIndexes[controller.currantPage],
      ),
      bottomNavigationBar: const BtmBarComponent(),
    );
  }
}
