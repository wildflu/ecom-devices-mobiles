

import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:im_stepper/stepper.dart';
import 'package:pcecommerce/data/models/device.dart';
import 'package:pcecommerce/domain/controllers/panier_controller/panier_controller.dart';


class PanierDeviceCardComponent extends StatefulWidget {
  const PanierDeviceCardComponent({super.key, required this.device});
  final Device device;

  @override
  State<PanierDeviceCardComponent> createState() => _PanierDeviceCardComponentState();
}

class _PanierDeviceCardComponentState extends State<PanierDeviceCardComponent> {


  List<int> counts =  [1,2,3,4,5,6,7,8,9, 10,20];
  int activeStep = 0;
  setActiveStep(int active){
    activeStep = active; 
    setState(() {});
  }

  double devicePriceXCount(int count, double price){
    return count * price;
  }


  @override
  Widget build(BuildContext context) {
    return GetBuilder<PanierController>(
      init: PanierController(),
      builder: (controller) {
        return Container(
          margin: const EdgeInsets.all(5),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
            boxShadow: [
              BoxShadow(
                offset: const Offset(1, 1),
                color: Theme.of(context).shadowColor,
                blurRadius: 5,
              ),
            ]
          ),
          child: Padding(
            padding: const EdgeInsets.only(bottom: 20, right: 5, left: 5, top: 5),
            child: Column(
              children: [
                Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,children: [
                  Row(
                    children: [
                      const Icon(Icons.av_timer),
                      const SizedBox(width: 5),
                      Text("12/21/1221", style: Theme.of(context).textTheme.titleSmall!.copyWith(fontSize: 16, fontWeight: FontWeight.w500),),
                    ],
                  ),
                  IconButton(
                    padding: const EdgeInsets.all(0),
                    style: IconButton.styleFrom(
                      backgroundColor: Theme.of(context).shadowColor
                    ),
                    onPressed: (){}, icon: const Icon(Icons.close, size: 15,))
                ],),
                Row(
                  children: [
                    Expanded(flex:2,child: ClipRRect(borderRadius: BorderRadius.circular(20), child: Image.asset(widget.device.image, height: 100, fit: BoxFit.contain,))),
                    Expanded(
                      flex: 4,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(widget.device.mark, style: Theme.of(context).textTheme.titleLarge,),
                            Text(widget.device.model, style: Theme.of(context).textTheme.titleSmall!.copyWith(fontSize: 15),),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Expanded(
                                  child: NumberStepper(
                                    stepRadius: 10,
                                    lineLength: 10,
                                    activeStepColor: Colors.lightBlue,
                                    numbers: counts,
                                    activeStep: activeStep,
                                    onStepReached: (index)=>setActiveStep(index),
                                  ),
                                ),
                                Container(
                                  padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(10),
                                    boxShadow: [
                                      BoxShadow(
                                        offset: const Offset(1, 1),
                                        color: Theme.of(context).shadowColor,
                                        blurRadius: 5,
                                      ),
                                    ]
                                  ),
                                  child: Text("${devicePriceXCount(counts[activeStep],widget.device.price).floor()} \$", style: TextStyle(color: Theme.of(context).primaryColor),),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        );
      }
    );
  }
}