


import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pcecommerce/presontation/pages/profile_page.dart';

class ProfileCardComponent extends StatelessWidget {
  const ProfileCardComponent({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Welcame", style: Theme.of(context).textTheme.titleLarge!.copyWith(color: Colors.black12, fontWeight: FontWeight.w400),),
            Text("User Name", style: Theme.of(context).textTheme.titleSmall!.copyWith(fontSize: 15, color: Colors.black, fontWeight: FontWeight.bold)),
          ],
        ),
        GestureDetector(
          onTap: ()=>Get.to(()=> const ProfilePage()),
          child: SizedBox(
            width: 50,
            height: 50,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(30),
              child: Image.asset('assets/one.jpg', fit: BoxFit.cover,),
            ),
          ),
        ),
      ],
    );
  }
}