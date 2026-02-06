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
        body:Center(child: 
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children:[
            Container(
              height:100,
              width:100,
              color:Colors.red,
            ),Expanded(child:
            Container(
              height:100,
              width:100,
              color:Colors.blue,
            ) )
          ]
        )
        ,));
  }
}