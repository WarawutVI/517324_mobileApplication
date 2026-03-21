import 'package:flutter/material.dart';

class Positionpage extends StatefulWidget {
  const Positionpage({super.key});

  @override
  State<Positionpage> createState() => _PositionpageState();
}

class _PositionpageState extends State<Positionpage> {
  bool _isLeft = true;

  void _moveBox() {
    setState(() {
      _isLeft = !_isLeft;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        AnimatedPositioned(
          duration: const Duration(seconds: 1),
          left: _isLeft ? 20 : 200,
          top: 100,
          child: Container(width: 100, height: 100, color: Colors.purple),
        ),
        Center(
          child: ElevatedButton(
            onPressed: _moveBox,
            child: const Text('Move Box'),
          ),
        ),
      ],
    );
  }
}
