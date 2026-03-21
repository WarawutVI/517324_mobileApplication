import 'package:flutter/material.dart';

class Alignpage extends StatefulWidget {
  const Alignpage({super.key});

  @override
  State<Alignpage> createState() => _AnimatealignpageState();
}

class _AnimatealignpageState extends State<Alignpage> {
  @override
  bool _isLeft=true;
  void _toggleposition(){
    setState(() {
         _isLeft=!_isLeft;
    });
  }



  Widget build(BuildContext context) {
    return Stack(
      children: [
        AnimatedAlign(
          duration: Duration(seconds: 1),
          alignment: _isLeft ?Alignment.centerLeft :Alignment.centerRight,
          child:Container(
               width: 100,
               height: 100,
               color: Colors.blue,
            ),
          ),
          Center(child: ElevatedButton(onPressed: ()=>_toggleposition(), child: Text("change")),)
      ],
    );

  }
}