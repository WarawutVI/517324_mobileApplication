import 'package:flutter/material.dart';

class Paddingpage extends StatefulWidget {
  const Paddingpage({super.key});

  @override
  State<Paddingpage> createState() => _PaddingpageState();
}

class _PaddingpageState extends State<Paddingpage> {
double _padding = 10;

  void _increasePadding() {
    setState(() {
      _padding = _padding == 10 ? 100 : 10;
    });
  }


  @override
  Widget build(BuildContext context) {
    return  Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        AnimatedPadding(
          duration: const Duration(seconds: 1),
          padding: EdgeInsets.all(_padding),
          child: Container(width: 100, height: 100, color: Colors.green),
        ),
        const SizedBox(height: 20),
        ElevatedButton(
          onPressed: _increasePadding,
          child: const Text('Change Padding'),
        ),
      ],
    );;
  }
}