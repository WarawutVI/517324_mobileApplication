import 'package:flutter/material.dart';

class ProfileStats extends StatelessWidget {
  const ProfileStats({super.key});
   // Instargram โดยการสร้างแบบ UI Composition  
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
          Column(
            children: [
              Text("221",style: TextStyle(fontSize: 20,fontWeight:FontWeight.bold ),),
              Text("Posts",style: TextStyle(fontSize: 15),)
            ],
          ),SizedBox(width: 20,),
          Column(
            children: [
              Text("221",style: TextStyle(fontSize: 20,fontWeight:FontWeight.bold ),),
              Text("Follower",style: TextStyle(fontSize: 15),)
            ],
          ),SizedBox(width: 20,),
          Column(
            children: [
              Text("220",style: TextStyle(fontSize: 20,fontWeight:FontWeight.bold ),),
              Text("Following",style: TextStyle(fontSize: 15),)
            ],
          ),
      ],
    );
  }
}