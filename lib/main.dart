import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter First Project',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.amber),
        useMaterial3: true,
      ),
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Color Layout'),
        backgroundColor: Color.fromARGB(255, 45, 19, 192),
      ),
      body: Center(
        child: Stack(
          children: [
            Container(
              width: 120,
              height: 300,
              decoration: BoxDecoration(
                color: Colors.black, // Color moved inside decoration
                borderRadius: BorderRadius.circular(20),
              ),
            ),
            Positioned(
              top: 10,
              right: 20,
              child: Container(
                width: 80,
                height: 80, // Must be equal for a circle

                decoration: BoxDecoration(
                  color: Colors.red,
                  shape: BoxShape.circle,
                ),
              ),
            ),
            Positioned(
              top: 100,
              right: 20,
              child: Container(
                width: 80,
                height: 80,
                // Must be equal for a circle
                decoration: BoxDecoration(
                  color: Colors.yellow,
                  shape: BoxShape.circle,
                ),
              ),
            ),
            Positioned(
              top: 190,
              right: 20,
              child: Container(
                width: 80,
                height: 80,
                // Must be equal for a circle
                decoration: BoxDecoration(
                  color: Colors.green,
                  shape: BoxShape.circle,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
