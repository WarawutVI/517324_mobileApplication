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
      body: ListView(
        children: [
          Container(
            height: 350,
            width: double.infinity,
            color: Colors.grey,
            child: Text("item 1"),
            ),
            Container(
            height: 350,
            width: double.infinity,
            color: Colors.red,
            child: Text("item 2"),
            ),
            Container(
            height: 350,
            width: double.infinity,
            color: Colors.yellow,
            child: Text("item 3"),
            ),
            
        ],
      )
    );
  }
}
