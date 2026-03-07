import 'package:flutter/material.dart';

class ProfileHeadrt extends StatelessWidget {
  const ProfileHeadrt({super.key});
   // Instargram โดยการสร้างแบบ UI Composition  
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start, crossAxisAlignment:CrossAxisAlignment.start,
      children: [
        CircleAvatar(radius: 40),
        SizedBox(height: 10,),
        Text("sunrai"),
        Text("ลูกหลานเเมนเชสเตอร์ "),
      ],
    );
  }
}
