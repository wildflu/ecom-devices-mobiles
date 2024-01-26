



import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pcecommerce/domain/controllers/panier_controller/panier_controller.dart';
import 'package:pcecommerce/presontation/components/panier_device_card_component.dart';

class MyBarPage extends StatelessWidget {
  const MyBarPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 100),
          child: GetBuilder<PanierController>(
            init: PanierController(),
            builder: (controller) {
              return ListView.builder(
                itemCount: controller.getBagDevices().length,
                itemBuilder: (context, index) {
                  return PanierDeviceCardComponent(
                    device: controller.getBagDevices()[index],
                  );
                },
              );
            }
          ),
        ),
        Positioned(
          top: 0,
          right: 0,
          left: 0,
          height: 100,
          child: Container(
            color: Colors.white,
            child: Padding(
              padding: const EdgeInsets.only(top: 30, right: 20, left: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("My Bag", style: TextStyle(color: Theme.of(context).primaryColor, fontSize: 17, fontWeight: FontWeight.bold),),
                  const Icon(Icons.layers_clear_rounded)
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}