import 'package:flutter/material.dart';

class WorkshopForminfo extends StatelessWidget {
  String username = "";
  String password = "";
  String name = "";
  String lastName = "";

  WorkshopForminfo({
    super.key,
    required this.username,
    required this.password,
    required this.name,
    required this.lastName,
  });

  @override
  Widget build(BuildContext context) {
    int lengthPass = password.length;
    String hiddenPass = "*" * lengthPass;

    return Scaffold(
      appBar: AppBar(title: const Text("User Information")),
      backgroundColor: Colors.lightBlue[100],
      body: Column(
        children: [
          SizedBox(height: 20),
          Container(
            height: 500,
            width: double.infinity,
            color: Colors.white,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 120,
                  height: 120,
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    shape: BoxShape.circle,
                  ),  
                  child: Center(
                    child:Icon( Icons.check_circle, size: 70, color: Colors.white),
                  ),
                ),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Username:",
                      style: TextStyle(
                        fontSize: 30,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(width: 10),
                    Text(
                      "$username",
                      style: TextStyle(fontSize: 30, color: Colors.black),
                    ),
                  ],
                ),
                Divider(
                  color: Colors.grey[300],
                  thickness: 2,
                  indent: 20,
                  endIndent: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Password:",
                      style: TextStyle(
                        fontSize: 30,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(width: 10),
                    Text(
                      "$password",
                      style: TextStyle(fontSize: 30, color: Colors.black),
                    ),
                  ],
                ),
                Divider(
                   color: Colors.grey[300],
                  thickness: 2,
                  indent: 20,
                  endIndent: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Name:",
                      style: TextStyle(
                        fontSize: 30,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(width: 10),
                    Text(
                      "$name",
                      style: TextStyle(fontSize: 30, color: Colors.black),
                    ),
                  ],
                ),Divider( color: Colors.grey[300], thickness: 2, indent: 20, endIndent: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Last Name:",
                      style: TextStyle(
                        fontSize: 30,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(width: 10),
                    Text(
                      "$lastName",
                      style: TextStyle(fontSize: 30, color: Colors.black),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
