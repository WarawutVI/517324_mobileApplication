import 'package:flutter/material.dart';

class Answer2 extends StatefulWidget {
  const Answer2({super.key});

  @override
  State<Answer2> createState() => _Answer2State();
}

class _Answer2State extends State<Answer2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Social Media Post'),
        backgroundColor: Colors.yellow[800],
      ),
      body: Column(
        children: [
          SizedBox(height: 10), // Add some spacing
          Row(
            children: [
              // CircleAvatar(
              //   radius: 50, // This controls the size
              //   backgroundImage: NetworkImage(
              //     "https://image.petmd.com/files/inline-images/pug-4.jpg?VersionId=gXnRJlkE4yObYKQD9B4p8ds7SsMufncV",
              //   ),
              // ),
              SizedBox(width: 10),
              Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                  color: Colors.blue, // Move color inside here
                  shape: BoxShape.circle,
                ),
              ),
              SizedBox(width: 10),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "User Name",
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "5 minutes ago",
                    style: TextStyle(fontSize: 12, color: Colors.grey[400]),
                  ),
                ],
              ),
            ],
          ),

          Container(
            width: double.infinity,
            height: 200,
            color: const Color.fromARGB(255, 95, 117, 128),
            margin: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(onPressed: () {}, child: Text("Like")),
              ElevatedButton(onPressed: () {}, child: Text("Comment")),
              ElevatedButton(onPressed: () {}, child: Text("Share")),
            ],
          ),
        ],
      ),
    );
  }
}
