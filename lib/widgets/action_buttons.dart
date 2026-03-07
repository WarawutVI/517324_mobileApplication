import 'package:flutter/material.dart';

class ActionButtons extends StatelessWidget {
  const ActionButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
       children: [
        SizedBox(width: 30,),
        ElevatedButton(onPressed:()=>(), child: Text("follow")),
         SizedBox(width: 20,),
         ElevatedButton(onPressed:()=>(), child: Text("Message")),
         SizedBox(width: 20,),
          ElevatedButton(onPressed:()=>(), child: Text("Contact")),
         SizedBox(width: 20,),
       ],
    );
  }
}