import 'package:flutter/material.dart';

class PostGrid extends StatelessWidget {
  const PostGrid({super.key});

  @override
  Widget build(BuildContext context) {
  return GridView.count(
      crossAxisCount: 3, // Number of columns
      crossAxisSpacing: 2.0, // Gap between columns
      mainAxisSpacing: 2.0, // Gap between rows
      children: List.generate(9, (index) {
        return Container(
          color: Colors.blue,
          child: Center(
            child: Text("Item $index"),
          ),
        );
      }),
    );
   
  }
}