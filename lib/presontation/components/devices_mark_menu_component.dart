

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pcecommerce/domain/controllers/devices_controller/devices_controller.dart';
import 'package:pcecommerce/presontation/components/card_devices_mark_component.dart';

class DevicesMarkMenuComponent extends StatelessWidget {
  const DevicesMarkMenuComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<DevicesController>(
      init: DevicesController(),
      builder: (controller) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 15, bottom: 10, top: 10),
              child: Text("Mark Menu", style: Theme.of(context).textTheme.titleLarge!.copyWith(color: Theme.of(context).unselectedWidgetColor, shadows: const [Shadow(offset: Offset(1, 1), color: Colors.black, blurRadius: 2)]),),
            ),
            SizedBox(
              height: 100,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: controller.marks.length,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: ()=> controller.onClickMark(controller.marks[index]),
                    child: DevicesMarkComponent(
                      mark: controller.marks[index]
                    ),
                  );
                },
              ),
            ),
          ],
        );
      }
    );
  }
}