import 'package:flutter/material.dart';

class Imagepage extends StatelessWidget {
  const Imagepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Image")),
      body: Row(
        children: [Image.asset('assets/product1.jpg', width: 200, height: 200),
        Image.network("https://www.akc.org/wp-content/uploads/2017/11/Pug-puppy-standing-in-profile-on-a-white-background.jpg", width: 200, height: 200)
         
        ],
      ),
    );
  }
}
