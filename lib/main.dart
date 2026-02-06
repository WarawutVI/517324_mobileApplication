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
        home: HomeScreen());
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Color Layout'),
          backgroundColor:Color.fromARGB(255, 45, 19, 192),
        ),
        body: Center(child: 
        Stack(children: [
          Container(
            width: 200,
            height: 200,
            color: Colors.blue
          ),
          Positioned(top:20,left: 30,
          child: Container(
            width: 50,
            height: 50,
            color: Colors.red
          ),),
          Positioned(bottom:20,right: 30,
          child: Container(
            width: 50,
            height: 50,
            color: Colors.yellow
          ),)
         
        ],),));
  }
}