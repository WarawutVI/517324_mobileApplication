import 'dart:async';
import 'dart:math';

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:my_app/Basicfinal/Columnpage.dart';
import 'package:my_app/Basicfinal/Elevatedbuttonpage.dart';
import 'package:my_app/Basicfinal/Expeandedpage.dart';
import 'package:my_app/Basicfinal/Imagepage.dart';
import 'package:my_app/Basicfinal/Listviewbuild.dart';
import 'package:my_app/Basicfinal/Listviewpage.dart';
import 'package:my_app/Basicfinal/Listviewseparated.dart';
import 'package:my_app/Basicfinal/Positionedpage.dart';
import 'package:my_app/Basicfinal/Rowpage.dart';
import 'package:my_app/Basicfinal/Stackpage.dart';
import 'package:my_app/Basicfinal/Statefulpage.dart';
import 'package:my_app/Basicfinal/Textbuttonpage.dart';
import 'package:my_app/Basicfinal/animation/alignpage.dart';
import 'package:my_app/Basicfinal/animation/containerpage.dart';
import 'package:my_app/Basicfinal/animation/opacitypage.dart';
import 'package:my_app/Basicfinal/animation/paddingpage.dart';
import 'package:my_app/Basicfinal/animation/positionpage.dart';
import 'package:my_app/Basicfinal/animation/composition/mainprofile.dart';
import 'package:my_app/Basicfinal/animation/swicherpage.dart';
import 'package:my_app/Basicfinal/form/checkboxpage.dart';
import 'package:my_app/Basicfinal/form/dropdownbutton.dart';
import 'package:my_app/Basicfinal/form/fullformpage.dart';
import 'package:my_app/Basicfinal/form/globalkeyform.dart';
import 'package:my_app/Basicfinal/form/radiopage.dart';
import 'package:my_app/Basicfinal/form/switchpage.dart';
import 'package:my_app/Basicfinal/form/textformfieldpage.dart';
import 'package:my_app/Basicfinal/statelesspage.dart';
import 'package:my_app/Homeworks/Product_page.dart';
import 'package:my_app/Homeworks/answer_portal.dart';
import 'package:my_app/components/Narbar.dart';
import 'package:my_app/firebase_db_screen/list_firebase_data.dart';
import 'package:my_app/firebase_options.dart';
import 'package:my_app/pages/animation_page.dart';
import 'package:my_app/pages/callapiPm_page.dart';
import 'package:my_app/pages/callapi_page.dart';
import 'package:my_app/pages/dropDonw_page.dart';
import 'package:my_app/pages/formInput.dart';
import 'package:my_app/pages/formPage.dart';
import 'package:my_app/pages/checkBox_page.dart';
import 'package:my_app/pages/listViewApi_page.dart';
import 'package:my_app/pages/listViewApi2_page.dart';
import 'package:my_app/pages/page_theme_text.dart';
import 'package:my_app/pages/profile_pageui.dart';
import 'package:my_app/pages/trafficlightanimation.dart';
import 'package:my_app/screen/content_screen.dart';
import 'package:my_app/screen/greeting_screen.dart';
import 'package:my_app/screen/list_product.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      darkTheme: ThemeData.dark(),
      theme:ThemeData.light(),
      themeMode: ThemeMode.system,
      title: 'Flutter First Project',
      debugShowCheckedModeBanner: false,
      initialRoute: '/basicfinal',
      routes: {
        // "/greeting": (context) => GreetingScreen(name:"Warawut Vichaiya", bgColor:Colors.white,imageUrl: "https://www.metlifepetinsurance.com/content/dam/metlifecom/us/metlifepetinsurance/images/blog/breed-spotlight/pug.webp",),
        // "/content": (context) => ContentScreen(),
        "/answer": (context) => AnswerPortal(),
        "/home": (context) => BottomNavigatorExample(),
        "/formpage": (context) => Formpage(),
        "/dropdown": (context) => DropdonwPage(),
        "/checkbox": (context) => CheckboxPage(),
        "/forminput": (context) => Forminput(),
        "/callapi": (context) => CallapiPage(),
        "/pmpage": (context) => PmPage(),
        "/listapi": (context) => ListviewapiPage(),
        "/listapi2": (context) => ListviewapiPage2(),
        "/listproduct": (context) => ListProduct(),
        "/listfirebase": (context) => ListFirebaseData(),
        "/productpage": (context) => ProductPage(),
        "/profileui": (context) => ProfilePageui(),
        "/texttheme" :(context) => PageThemeText(),
        "/animationpage" :(context) => AnimationPage(),
        "/trafficlightanimate" : (context) => Trafficlightanimation(),
        "/basicfinal" : (context) =>  Paddingpage(),
      
      },
      // theme: ThemeData(
        
      //   colorScheme: ColorScheme.fromSeed(
      //     seedColor: const Color.fromARGB(255, 224, 128, 248),
      //   ),
      //   useMaterial3: true,
      //   textTheme:  const TextTheme(
      //     bodySmall: TextStyle(fontSize: 12, fontWeight: FontWeight.w400),
      //     bodyLarge: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),
      //     bodyMedium: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)
      //      )
      // ),



      home: BottomNavigatorExample(),
      // home: GreetingScreen(name:"Warawut Vichaiya", bgColor:Colors.white,imageUrl: "https://www.metlifepetinsurance.com/content/dam/metlifecom/us/metlifepetinsurance/images/blog/breed-spotlight/pug.webp",) ,
    );
  }
}


class Pagetexttheme extends StatelessWidget {
  const Pagetexttheme({super.key});

  @override
  Widget build(BuildContext context) {
    // Accessing the theme correctly

    return Scaffold(
      body: Column(
        children: [
          Text("Title",),
          Text("Subtitle", style: Theme.of(context).textTheme.bodySmall),
        ],
      ),
    );
  }
}