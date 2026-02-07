import 'dart:math';

import 'package:flutter/material.dart';
import 'package:my_app/screen/greeting_screen.dart';

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
      home: GreetingScreen(name:"Warawut Vichaiya", bgColor:Colors.white,imageUrl: "https://www.metlifepetinsurance.com/content/dam/metlifecom/us/metlifepetinsurance/images/blog/breed-spotlight/pug.webp",) ,
    );
  }
}




