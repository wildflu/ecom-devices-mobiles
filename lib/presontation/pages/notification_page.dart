

import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:pcecommerce/presontation/components/notification_card_component.dart';

class NotificationPage extends StatelessWidget {
  const NotificationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 60),
            child: ListView.builder(
              itemCount: 10,
              itemBuilder: (context, index) {
                return const NotificationCardComponent();
              },
            ),
          ),
          Positioned(
            top: 0,
            left: 10,
            right: 10,
            child: Container(
              color: Theme.of(context).scaffoldBackgroundColor,
              padding: const EdgeInsets.only(top: 10),
              child: Row(
                children: [
                  Expanded(
                    child: Row(
                      children: [
                        const Icon(Icons.arrow_back_ios_new_outlined, textDirection: TextDirection.ltr,),
                        const SizedBox(width: 20,),
                        Text("Notification", style: Theme.of(context).textTheme.titleMedium,),
                      ],
                    ),
                  ),
                  IconButton(onPressed: (){}, icon: const Icon(Icons.layers_clear_outlined))
                ],
              ),
            ),
          ),
        ],
      ).animate().fade(),
    );
  }
}