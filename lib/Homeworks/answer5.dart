import 'package:flutter/material.dart';
import 'package:my_app/Homeworks/answer1.dart';
import 'package:my_app/Homeworks/answer2.dart';
import 'package:my_app/Homeworks/answer3.dart';
import 'package:my_app/Homeworks/answer4.dart';

class AnswerPortal extends StatefulWidget {
  const AnswerPortal({super.key});

  @override
  State<AnswerPortal> createState() => _AnswerPortalState();
}

class _AnswerPortalState extends State<AnswerPortal> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Answer '),
        backgroundColor: Colors.yellow[800],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute<void>(
                    builder: (BuildContext context) {
                      return const Answer1();
                    },
                  ),
                );
              },
              child: const Text('Answer 1'),
            ),
             ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute<void>(
                    builder: (BuildContext context) {
                      return const Answer2();
                    },
                  ),
                );
              },
              child: const Text('Answer 2'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute<void>(
                    builder: (BuildContext context) {
                      return const Answer3();
                    },
                  ),
                );
              },
              child: const Text('Answer 3'),

            ),ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute<void>(
                    builder: (BuildContext context) {
                      return const Answer4();
                    },
                  ),
                );
              },
              child: const Text('Answer 4'),
              
            ),
          ],
        ),
      ),
    );
  }
}
