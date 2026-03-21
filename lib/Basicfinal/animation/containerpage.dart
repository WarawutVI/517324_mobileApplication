import 'package:flutter/material.dart';

class Containerpage extends StatefulWidget {
  const Containerpage({super.key});

  @override
  State<Containerpage> createState() => _AnimatecontainerpageState();
}

class _AnimatecontainerpageState extends State<Containerpage> {
  @override
  double _size=100;
  Color _color=Colors.blue;

  void _changeBox(){
    setState(() {
       _size=_size==100 ? 200: 100;
       _color= _color==Colors.blue? Colors.red: Colors.blue;
    });
  }


  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Contrainer animaete"),),
      body: Column(
        children: [
          AnimatedContainer(
            duration: Duration(seconds: 1),
            curve: Curves.easeInOut,
            color: _color,
            width: _size,
            height: _size,
          ),
          ElevatedButton(onPressed: ()=>_changeBox(), child: Text("change"))
        ],
      ),
    );
  }
}