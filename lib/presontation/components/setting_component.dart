


import 'package:flutter/material.dart';

class SettingComponent extends StatelessWidget {
  const SettingComponent({
    super.key, required this.label, required this.icon, required this.widget,
  });
  final String label;
  final IconData icon;
  final Widget widget;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15),
      child: Row(
        children: [
          Icon(icon),
          const SizedBox(width: 10),
          Expanded(child: Text(label, style: TextStyle(fontSize: 17, fontWeight: FontWeight.w500, color: Theme.of(context).primaryColor),)),
          widget
        ],
      ),
    );
  }
}
