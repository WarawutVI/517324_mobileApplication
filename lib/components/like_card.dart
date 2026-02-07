import 'package:flutter/material.dart';

class LikeCard extends StatefulWidget {
  const LikeCard({super.key});
  @override
  State<LikeCard> createState() => _LikeCardState();
}

class _LikeCardState extends State<LikeCard> {
  bool isLiked = false;
  int count = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      child: Column(
        children: [
          Text(count.toString(),
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
              
          
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              IconButton(
                onPressed: () {
                  setState(() {
                    count++;
                  });
                },
                icon: Icon(Icons.add),
                color: Colors.redAccent,
                iconSize: 40,
                
              ), IconButton(
                onPressed: () {
                  setState(() {
                    count--;
                  });
                },
                icon: Icon(Icons.remove),
                color: Colors.redAccent,
                iconSize: 40,
              ),TextButton(
                onPressed: (){
                  setState(() {
                    count=0;
                  });
                }, child: Text("Reset",style: TextStyle(color: Colors.redAccent,fontWeight: FontWeight.bold,fontSize: 20),))
            ],
          ),
        ],
      ),
    );
  }
}
