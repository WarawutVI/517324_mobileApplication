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
          title: Text('First Time App'),
          backgroundColor:Colors.white,
        ),
        body: Center(
          child: Container(
            width: 250,
            height: 250,
            color: Colors.blue,
            child: Center(
              child: Text("Hello,Warawut Vichaiya 660710115", style:TextStyle(fontSize: 35),textAlign: TextAlign.center),
            ),
          ),
        ));
  }
}