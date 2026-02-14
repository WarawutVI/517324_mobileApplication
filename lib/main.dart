import 'dart:math';

import 'package:flutter/material.dart';
import 'package:my_app/Homeworks/answer_portal.dart';
import 'package:my_app/screen/content_screen.dart';
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
      initialRoute: '/answer',
      routes: {
        // "/greeting": (context) => GreetingScreen(name:"Warawut Vichaiya", bgColor:Colors.white,imageUrl: "https://www.metlifepetinsurance.com/content/dam/metlifecom/us/metlifepetinsurance/images/blog/breed-spotlight/pug.webp",),
        // "/content": (context) => ContentScreen(),
        "/answer": (context) => AnswerPortal(),
      },
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: const Color.fromARGB(255, 224, 128, 248)),
        useMaterial3: true,
      ),
      home: AnswerPortal(),
      // home: GreetingScreen(name:"Warawut Vichaiya", bgColor:Colors.white,imageUrl: "https://www.metlifepetinsurance.com/content/dam/metlifecom/us/metlifepetinsurance/images/blog/breed-spotlight/pug.webp",) ,
    );
  }
}




