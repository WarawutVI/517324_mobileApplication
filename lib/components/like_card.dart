import 'package:flutter/material.dart';

class LikeCard extends StatefulWidget {
  const LikeCard({super.key});
  @override
  State<LikeCard> createState() => _LikeCardState();
}



class _LikeCardState extends State<LikeCard> {
  bool isLiked = false;
  @override
  Widget build(BuildContext context) {



    return Container(
      color: Colors.lightGreenAccent,
      child: Column(
        children: [
          Text(
            isLiked ? "Liked" : " DisLike"
            ),
          IconButton(
            onPressed: () {
              setState(() {
                isLiked = !isLiked;
              });
            }, 
            icon: Icon(
              isLiked ? Icons.thumb_up : Icons.thumb_down)),  
        ],
      ),
    );
  }
}