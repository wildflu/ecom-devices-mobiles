

import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

class NotificationCardComponent extends StatelessWidget {
  const NotificationCardComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SizedBox(
        height: 80,
        child: Row(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.circular(8),
              ),
              width: 8,
              height: MediaQuery.of(context).size.height,
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('the description of this notification 10 words max', style: Theme.of(context).textTheme.titleSmall!.copyWith(fontSize: 15, height: 1),),
                    Text('Notif title', style: Theme.of(context).textTheme.titleSmall!.copyWith(fontSize: 17, color: Colors.black),),
                  ],
                ),
              ),
            ),
            Text('10:12 PM', style: Theme.of(context).textTheme.titleSmall!.copyWith(fontSize: 12, color: Colors.grey),),
          ],
        ),
      ),
    ).animate().moveY(begin: 20);
  }
}