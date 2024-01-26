

import 'package:flutter/material.dart';
import 'package:pcecommerce/domain/model/menu_marks.dart';

class DevicesMarkComponent extends StatelessWidget {
  const DevicesMarkComponent({super.key, required this.mark});
  final MenuMark mark;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
      width: 90,
      height: 80,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: mark.isActive?Colors.blue : Theme.of(context).shadowColor
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.home, size: 50, color: mark.isActive?Colors.white : Theme.of(context).unselectedWidgetColor,),
          Text(mark.name, style: TextStyle(color: mark.isActive?Colors.white : Theme.of(context).unselectedWidgetColor,),)
        ],
      ),
    );
  }
}