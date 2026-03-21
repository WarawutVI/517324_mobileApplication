import 'package:flutter/material.dart';

class Swicherpage extends StatefulWidget {
  const Swicherpage({super.key});

  @override
  State<Swicherpage> createState() => _SwicherpageState();
}

class _SwicherpageState extends State<Swicherpage> {
 bool _isFirst = true;

  void _switchWidget() {
    setState(() {
      _isFirst = !_isFirst;
    });
  }


  @override
  Widget build(BuildContext context) {
    return  Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        AnimatedSwitcher(
          duration: const Duration(seconds: 1),
          child: _isFirst
              ? Container(
                  key: const ValueKey(1),
                  width: 100,
                  height: 100,
                  color: Colors.orange)
              : Container(
                  key: const ValueKey(2),
                  width: 100,
                  height: 100,
                  color: Colors.blue),
        ),
        const SizedBox(height: 20),
        ElevatedButton(
          onPressed: _switchWidget,
          child: const Text('Switch Widget'),
        ),
      ],
    );;
  }
}