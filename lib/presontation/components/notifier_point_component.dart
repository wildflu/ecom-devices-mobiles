

import 'package:flutter/material.dart';

class NotifierPointComponent extends StatelessWidget {
  const NotifierPointComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 8,
      height: 8,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.red
      ),
    );
  }
}