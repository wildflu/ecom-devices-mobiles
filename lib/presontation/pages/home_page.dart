


import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:get/get.dart';
import 'package:pcecommerce/domain/controllers/devices_controller/devices_controller.dart';
import 'package:pcecommerce/presontation/components/app_bar_component.dart';
import 'package:pcecommerce/presontation/components/device_card_component.dart';
import 'package:pcecommerce/presontation/components/devices_mark_menu_component.dart';
import 'package:pcecommerce/presontation/pages/device_details.dart';

class HomePage extends StatelessWidget {
  const HomePage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: GetBuilder<DevicesController>(
        init: DevicesController(),
        builder: (controller) {
          return ListView(
            children: [
              const AppBarComponent(),
              const DevicesMarkMenuComponent(),
              const SizedBox(height: 20),
              Container(
                margin: const EdgeInsets.all(10),
                child: MasonryGridView.count(
                  crossAxisCount: 2,
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: controller.devices.length,
                  mainAxisSpacing: 10,
                  crossAxisSpacing: 10,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () => Get.to(()=> const DeviceDetails()),
                      child: DeviceCardComponent(
                        image: controller.devices[index].image,
                        mark: controller.devices[index].mark,
                        model: controller.devices[index].model,
                        price: controller.devices[index].price,
                        description: controller.devices[index].description,
                      ),
                    );
                  }, 
                ),
              )
            ],
          );
        }
      ),
    );
  }
}
