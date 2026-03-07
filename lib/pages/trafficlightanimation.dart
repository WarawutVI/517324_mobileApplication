import 'package:flutter/material.dart';

class Trafficlightanimation extends StatefulWidget {
  const Trafficlightanimation({super.key});

  @override
  State<Trafficlightanimation> createState() => _TrafficlightanimationState();
}

class _TrafficlightanimationState extends State<Trafficlightanimation> {
  double op1=1;
  double op2=0.3;
  double op3=0.3;
  int index=1;
  void changecolor(){

    setState(() { // <--- Add this!
    if (index > 3) {
      index = 1;
    }
     print(index);
    if (index == 1) {
      op1 = 1;
      op2 = 0.3;
      op3 = 0.3;
      index++;
    } else if (index == 2) {
      op1 = 0.3;
      op2 = 1;
      op3 = 0.3;
      index++;
    } else {
      op1 = 0.3; 
      op2 = 0.3;
      op3 = 1;
      index++;
    }
  });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
        title: Text("Traffic Light Animation"),
       ),
       body: Center(
         child: Column(
           mainAxisAlignment:MainAxisAlignment.center ,
           children: [
            AnimatedOpacity(
              opacity: op1,
               duration:Duration(seconds: 1 ),
               child: Container(
                 height: 100,
                 width: 100,
                 decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.all(Radius.circular(100)),
                 ),
               )
               ),SizedBox(height: 20,),
                AnimatedOpacity(
              opacity: op2,
               duration:Duration(seconds: 1 ),
               child: Container(
                 height: 100,
                 width: 100,
                 decoration: BoxDecoration(
                  color: Colors.yellow,
                  borderRadius: BorderRadius.all(Radius.circular(100)),
                  
                 ),
               )
               ),SizedBox(height: 20,),
                AnimatedOpacity(
              opacity: op3,
               duration:Duration(seconds: 1 ),
               child: Container(
                 height: 100,
                 width: 100,
                 decoration: BoxDecoration(
                  color: Colors.green,
                  borderRadius: BorderRadius.all(Radius.circular(100)),
                 ),
               )
               ),SizedBox(height: 20,),
               ElevatedButton(onPressed: (){
                 changecolor();
               }, child: Text("Change color"))
           ],
         ),
       ),
    );
  }
}