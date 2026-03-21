

import 'package:flutter/material.dart';

class Opacitypage extends StatefulWidget {
  const Opacitypage({super.key});

  @override
  State<Opacitypage> createState() => _OpacitypageState();
}

class _OpacitypageState extends State<Opacitypage> {
  @override
  double _opacity=1.0;
  void _toggleopacity(){
    setState(() {
      _opacity=_opacity==1.0 ?0.2:1.0;
    });
  }



  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(title: Text("Opacity animate"),),
       body: Column(
        children: [
          AnimatedOpacity(
            duration: Duration(seconds: 1),
            opacity: _opacity,
            child: Container(
               width: 100,
               height: 100,
               color: Colors.blue,
            ),
          ),
          ElevatedButton(onPressed: ()=>_toggleopacity(), child: Text("change"))
        ],
       ),
    );
  }
}