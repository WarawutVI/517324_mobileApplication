import 'package:flutter/material.dart';

class Answer3 extends StatefulWidget {
  const Answer3({super.key});

  @override
  State<Answer3> createState() => _Answer3State();
}

class _Answer3State extends State<Answer3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Product Layout'),
        backgroundColor: Colors.yellow[800],
      ),
      body: Column(
        children: [
          Container(
            height: 50,
            width: double.infinity,
            color: Colors.grey[350],
            padding: const EdgeInsets.symmetric(vertical:10, horizontal: 10),
            child: Text("Category: Electronics",style: TextStyle(fontSize: 22),),
          ),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  Image.asset("assets/product1.jpg", width: 150, height: 150),
                  Text("Laptop",style: TextStyle(fontSize: 18),),
                  Text("999 THB",style: TextStyle(fontSize: 18,color: Colors.green),)
                ],
              ), 
              Column(
                children: [
                  Image.network(  
                    "https://www.unihertz.com/cdn/shop/products/golden-eye-5g-slim-rugged-camping-light-smartphone-for-explorersunihertz-264872.jpg?v=1698816690&width=1000",
                    width: 150,
                    height: 150,
                  ),
                  Text("Smartphone",style: TextStyle(fontSize: 18),),
                  Text("699 THB",style: TextStyle(fontSize: 18,color: Colors.green),)
                ],
              )
            ],
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  Image.network(  
                    "https://cdn.thewirecutter.com/wp-content/media/2025/04/BEST-TABLETS-2048px-3x2-1.jpg?auto=webp&quality=75&crop=4:3,smart&width=1024",
                    width: 150,
                    height: 150,
                  ),
                  Text("Teblet",style: TextStyle(fontSize: 18),),
                  Text("499 THB",style: TextStyle(fontSize: 18,color: Colors.green),)
                ],
              ), 
              Column(
                children: [
                  Image.network(  
                    "https://www.ec-mall.com/media/catalog/product/cache/8ac2415051f90bc681b93bf83b022eed/d/a/dad2fb057b8c0c2fc497fb0bba802b60f06312ef71a5ffa493e26e1873b0fcef.jpeg",
                    width: 150,
                    height: 150,
                  ),
                  Text("Camera",style: TextStyle(fontSize: 18),),
                  Text("299 THB",style: TextStyle(fontSize: 18,color: Colors.green),)
                ],
              )
            ],
          ),
        
        ],)
    );
  }
}