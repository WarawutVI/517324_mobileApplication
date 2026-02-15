import 'dart:math';

import 'package:flutter/material.dart';
import 'package:my_app/Homeworks/answer_portal.dart';
import 'package:my_app/components/Narbar.dart';
import 'package:my_app/pages/dropDonw_page.dart';
import 'package:my_app/pages/formInput.dart';
import 'package:my_app/pages/formPage.dart';
import 'package:my_app/pages/checkBox_page.dart';
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
      initialRoute: '/forminput',
      routes: {
        // "/greeting": (context) => GreetingScreen(name:"Warawut Vichaiya", bgColor:Colors.white,imageUrl: "https://www.metlifepetinsurance.com/content/dam/metlifecom/us/metlifepetinsurance/images/blog/breed-spotlight/pug.webp",),
        // "/content": (context) => ContentScreen(),
        "/answer": (context) => AnswerPortal(),
        "/home": (context) => BottomNavigatorExample(),
        "/formpage": (context) => Formpage(),
        "/dropdown": (context) => DropdonwPage(),
        "/checkbox": (context) => CheckboxPage(),
        "/forminput": (context) => Forminput(),
      },
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: const Color.fromARGB(255, 224, 128, 248)),
        useMaterial3: true,
      ),
      home: BottomNavigatorExample(),
      // home: GreetingScreen(name:"Warawut Vichaiya", bgColor:Colors.white,imageUrl: "https://www.metlifepetinsurance.com/content/dam/metlifecom/us/metlifepetinsurance/images/blog/breed-spotlight/pug.webp",) ,
    );
  }
}




