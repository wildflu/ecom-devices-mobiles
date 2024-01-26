
import 'package:flutter/material.dart';

class SettingsHeaderComponent extends StatelessWidget {
  const SettingsHeaderComponent({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      height: 200,
      decoration: BoxDecoration(
        color: Theme.of(context).scaffoldBackgroundColor,
        boxShadow: [
          BoxShadow(
            offset: const Offset(1, 1),
            color: Theme.of(context).shadowColor,
            blurRadius: 10
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("Settings", style: TextStyle(fontSize: 40, fontWeight: FontWeight.w400, color: Theme.of(context).shadowColor),),
          Row(
            children: [
              Container(
                width: 70,
                height: 70,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(40),
                  border: Border.all(width: 2, color: Theme.of(context).primaryColor),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(40),
                  child: Image.asset('assets/profile.png', fit: BoxFit.cover,)),
              ),
              const Expanded(
                child: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("UserName", style: TextStyle(fontSize: 17, color: Colors.black54),),
                      Text("Example@gmail.com", style: TextStyle(fontSize: 17, color: Colors.black26),),
                    ],
                  ),
                ),
              ),
              IconButton(onPressed: (){}, icon: Icon(Icons.edit,), style: IconButton.styleFrom(backgroundColor: Colors.black12, padding: const EdgeInsets.all(10)),)
            ],
          )
        ],
      ),
    );
  }
}