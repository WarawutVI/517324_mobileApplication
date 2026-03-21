import 'package:flutter/material.dart';

class Statefulpage extends StatefulWidget {
  const Statefulpage({super.key});

  @override
  State<Statefulpage> createState() => _StatefulpageState();
}

class _StatefulpageState extends State<Statefulpage> {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("StateFulWidget")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Couter : $counter"),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      counter++;
                    });
                  },
                  child: Text("+ Increment"),
                ),ElevatedButton(
                  onPressed: () {
                    setState(() {
                      counter--;
                    });
                  },
                  child: Text("- Decrement"),
                ),ElevatedButton(
                  onPressed: () {
                    setState(() {
                      counter=0;
                    });
                  },
                  child: Text("Reset"),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
