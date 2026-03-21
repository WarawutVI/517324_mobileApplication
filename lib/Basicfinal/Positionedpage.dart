import 'package:flutter/material.dart';

class Positionedpage extends StatelessWidget {
  const Positionedpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Positioned traffic")),
      body: Center(
        child: Stack(
          children: [
            Container(
              height: 300,
              width: 120,
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            Positioned(
              top: 10,
              left: 20,
              child: Container(
                height: 80,
                width: 80,
                decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.circular(100),
                ),
              ),
            ),
            Positioned(
              top: 110,
              left: 20,
              child: Container(
                height: 80,
                width: 80,
                decoration: BoxDecoration(
                  color: Colors.yellow,
                  borderRadius: BorderRadius.circular(100),
                ),
              ),
            ),
            Positioned(
              top: 210,
              left: 20,
              child: Container(
                height: 80,
                width: 80,
                decoration: BoxDecoration(
                  color: Colors.green,
                  borderRadius: BorderRadius.circular(100),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}



// Scaffold(
//       appBar: AppBar(title: Text("Positioned")),
//       body: Center(
//         child: Stack(
//           children: [
//             Container(height: 200, width: 200, color: Colors.blue),
//             Positioned(top:130,left: 130,child: Container(height: 50, width: 50, color: Colors.yellow) ),
//             Positioned(left: 20,top: 10 //ห่าง top  10 units 
//             ,child: Container(height: 50, width: 50, color: Colors.red) )  
//           ],
//         ),
//       ),
//     );