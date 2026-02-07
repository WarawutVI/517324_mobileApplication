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
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                onPressed: () {
                  setState(() {
                    count++;
                  });
                },
                icon: Icon(Icons.add),
                color: Colors.redAccent,
                
              ), IconButton(
                onPressed: () {
                  setState(() {
                    count--;
                  });
                },
                icon: Icon(Icons.remove),
                color: Colors.redAccent,
              ),TextButton(
                onPressed: (){
                  setState(() {
                    count=0;
                  });
                }, child: Text("Reset",style: TextStyle(color: Colors.redAccent),))
            ],
          ),
        ],
      ),
    );
  }
}
