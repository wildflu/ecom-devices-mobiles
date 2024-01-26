

import 'package:flutter/material.dart';
import 'package:pcecommerce/presontation/components/notifier_point_component.dart';
import 'package:pcecommerce/presontation/components/profile_card_component.dart';

class AppBarComponent extends StatelessWidget {
  const AppBarComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      padding: const EdgeInsets.all(15),
      decoration: const BoxDecoration(
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const ProfileCardComponent(),
          Row(
            children: [
              Expanded(
                child: TextField(
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400, color: Theme.of(context).unselectedWidgetColor),
                  decoration: InputDecoration(
                    contentPadding: const EdgeInsets.symmetric(vertical: 5),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide.none
                    ),
                    hintText: 'Your Search',
                    hintStyle: TextStyle(fontSize: 16, fontWeight: FontWeight.w400, color: Theme.of(context).shadowColor),
                    filled: true,
                    fillColor: const Color.fromARGB(179, 228, 228, 228),
                    prefixIcon: IconButton(onPressed: (){}, icon: const Icon(Icons.search),),
                    suffixIcon: IconButton(onPressed: (){}, icon: const Icon(Icons.filter_list_rounded, color: Colors.black,)),
                  ),
                ),
              ),
              Stack(
                children: [
                  IconButton(
                    onPressed: (){}, icon: const Icon(Icons.notifications)
                  ),
                  const Positioned(
                    top: 15,
                    right: 15,
                    child: NotifierPointComponent()),
                  
                ]
              )
            ],
          )
        ],
      ),
    );
  }
}
