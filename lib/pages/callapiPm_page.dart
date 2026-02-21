import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:my_app/models/pm_data.dart';

class PmPage extends StatefulWidget {
  const PmPage({super.key});

  @override
  State<PmPage> createState() => _PmPageState();
}

class _PmPageState extends State<PmPage> {
  PmData? pmData;
  void fetchUser() async {
    try {
      var response = await http.get(
        Uri.parse(
          'https://api.waqi.info/feed/here/?token=f35deeb263b57eb1a30a261f1038c50392cd99ac',
        ),
      );
      print(response.statusCode);
      if (response.statusCode == 200) {
        var data = jsonDecode(response.body);
        PmData pm = PmData.fromJson(data);
        setState(() {
          pmData = pm;
        });
        print(' ${pmData?.city}');
        print(' ${pmData?.color}');
        print("${pmData?.t}");
      } else {
        print('Failed to fetch data');
      }
    } catch (e) {
      print('Error: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Air Quality Index(AQI)'),
        backgroundColor: Colors.grey[500],
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 20),
           Text(
              '${pmData?.city}',
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 40),
            Container(
              height: 200,
              width: 300,
              color: pmData?.color,
              child: Center(
                child: Text(
                  '${pmData?.aqi}',
                  style: TextStyle(fontSize: 70, color: Colors.white),
                ),
              ),
            ),
            SizedBox(height: 40),
            Text(
              '${pmData?.state}',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: pmData?.color,
              ),
            ),
            SizedBox(height: 30),
            Text(
              'temperature: ${pmData?.t} °C',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                
              ),
            ),
            SizedBox(height: 80),
            ElevatedButton(
              onPressed: () {
                fetchUser();
              },
              child: Text('Refresh',style:TextStyle(color: Colors.white),),
              style: ElevatedButton.styleFrom(backgroundColor: Colors.green, ),
            ),
          ],
        ),
      ),
    );
  }
}
