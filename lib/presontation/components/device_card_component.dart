

import 'package:flutter/material.dart';

class DeviceCardComponent extends StatelessWidget {
  const DeviceCardComponent({super.key, required this.model, required this.mark, required this.image, required this.price, this.description});
  final String model;
  final String mark;
  final String ?description;
  final String image;
  final double price;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            offset: const Offset(1, 1),
            color: Theme.of(context).shadowColor,
            blurRadius: 5
          ),
        ],
        color: Colors.white,
      ),
      child: Column(
        children: [
          Stack(
            children: [
              ClipRRect(
                borderRadius: const BorderRadius.vertical(top: Radius.circular(20)),
                child: Image.asset(image)),
              Positioned(
                top: 10,
                right: 10,
                child: Container(
                  width: 40,
                  height: 20,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.black.withOpacity(0.5)
                  ),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Icon(Icons.star, color: Colors.yellow,size: 15,),
                      Text("5.4", style: TextStyle(color: Colors.yellow, fontSize: 10, fontWeight: FontWeight.bold),)
                    ],
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("$mark, $model", style: Theme.of(context).textTheme.titleMedium!.copyWith(fontSize: 17),),
                description !=null
                ?Text(description!,  style: Theme.of(context).textTheme.titleSmall!.copyWith(fontSize: 14), )
                :Container(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                      Text("$price\$", style: Theme.of(context).textTheme.titleMedium!.copyWith(fontSize: 17),),
                      Text("/Ps", style: Theme.of(context).textTheme.titleMedium!.copyWith(fontSize: 10),),
                      ],
                    ),
                    IconButton(onPressed: (){}, icon: Icon(Icons.add, color: Theme.of(context).scaffoldBackgroundColor,), style: IconButton.styleFrom(backgroundColor: Colors.blue),)
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}