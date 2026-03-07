import 'package:flutter/material.dart';

class PageThemeText extends StatefulWidget {
  const PageThemeText({super.key});

  @override
  State<PageThemeText> createState() => _PageThemeTextState();
}

class _PageThemeTextState extends State<PageThemeText> {
  @override
  
  Widget build(BuildContext context) {
     return  Scaffold(
      appBar: AppBar(title: Text("text theme")),
      body: Column(
        children: [
          Text("titel",style: Theme.of(context).textTheme.bodyLarge),
        ],
      ),
    );
  }
}