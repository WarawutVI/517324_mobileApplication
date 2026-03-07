import 'package:flutter/material.dart';

class ActionButtons extends StatelessWidget {
  const ActionButtons({super.key});
  // Instargram โดยการสร้างแบบ UI Composition  
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
       children: [
        
        ElevatedButton(onPressed:()=>(), child: Text("follow"),style: ElevatedButton.styleFrom(
          backgroundColor: Colors.blue, // Button color
          foregroundColor: Colors.white,
          minimumSize: Size(120, 40),
          shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(3), // Soft rounded corners
        ),
        ),),
         
          ElevatedButton(onPressed:()=>(), child: Text("Message"),style: ElevatedButton.styleFrom(
          backgroundColor: const Color.fromARGB(255, 207, 207, 207), // Button color
          foregroundColor: Colors.black26,
          minimumSize: Size(80, 40),
          shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(3), // Soft rounded corners
        ),
        ),),
         
         ElevatedButton(onPressed:()=>(), child: Text("Contarct"),style: ElevatedButton.styleFrom(
          backgroundColor: const Color.fromARGB(255, 207, 207, 207), // Button color
          foregroundColor: Colors.black26,
          minimumSize: Size(80, 40),
          shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(3), // Soft rounded corners
        ),
        ),),
        
       ],
    );
  }
}