


import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';
import 'package:pcecommerce/domain/controllers/components_controllers/switcher_controller.dart';

class LanguageSwitcherComponent extends StatelessWidget {
  const LanguageSwitcherComponent({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GetBuilder<SwitcherController>(
      init: SwitcherController(),
      builder: (controller) {
        return Container(
          padding: const EdgeInsets.all(1),
          width: 120,
          height: 40,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20)
          ),
          child: Stack(
            children: [
              Row(
                children: [
                  Expanded(
                    child: GestureDetector(
                      onTap: ()=>controller.switchTo('AR'),
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Center(child: Text("AR", style: Theme.of(context).textTheme.titleSmall!.copyWith(fontSize: 14),)),
                      ),
                    ),
                  ),
                  Expanded(
                    child: GestureDetector(
                      onTap: ()=>controller.switchTo('EN'),
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20)
                        ),
                        child: Center(child: Text("EN", style: Theme.of(context).textTheme.titleSmall!.copyWith(fontSize: 14),)),
                      ),
                    ),
                  ),
                  Expanded(
                    child: GestureDetector(
                      onTap: ()=>controller.switchTo('FR'),
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Center(child: Text("FR", style: Theme.of(context).textTheme.titleSmall!.copyWith(fontSize: 14),)),
                      ),
                    ),
                  )
                ],
              ),
              AnimatedPositioned(
                duration: const Duration(milliseconds: 200),
                top: 1,
                left: controller.left,
                bottom: 1,
                right: controller.right,
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white,
                    boxShadow:[
                      BoxShadow(
                        offset: const Offset(1, 1),
                        blurRadius: 5,
                        color: Theme.of(context).shadowColor
                      )
                    ]
                  ),
                  child: Center(child: Text(controller.language, style: Theme.of(context).textTheme.titleLarge!.copyWith(fontSize: 16),)),
                ),
              )
            ],
          ),
        );
      }
    );
  }
}
