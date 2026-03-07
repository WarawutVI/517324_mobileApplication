import 'package:flutter/material.dart';

class AnimationPage extends StatefulWidget {
  const AnimationPage({super.key});

  @override
  State<AnimationPage> createState() => _AnimationPageState();
}
class _AnimationPageState extends State<AnimationPage> {
   double heightContainer=100;
   double widthContainer=100;
   Color colorCOntainer=Colors.green;
  
  void animateBox(){
    heightContainer=100;
     widthContainer=100;
     colorCOntainer=Colors.red;
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Animation")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedContainer(height: heightContainer, width: widthContainer, color: colorCOntainer,duration: Duration(milliseconds: 500),),
            ElevatedButton(onPressed: () {animateBox();}, child: Text("Animate box")),
          ],
        ),
      ),
    );
  }
}
