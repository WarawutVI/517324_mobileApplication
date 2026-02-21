// Model Class
import 'package:flutter/material.dart';

class PmData {

  final String city;
  final int aqi;
  Color? color;
  String? state;

  // Constructor
  PmData(this.city,this.aqi){
   setColor(aqi);  
  }

  // แปลง JSON เป็น Object
 // แก้ไขตรงนี้: เรียก setColor ใน fromJson ด้วย
  PmData.fromJson(Map<String, dynamic> json)
      : city = json['data']['city']['name'],
        aqi = json['data']['aqi']
       { setColor(aqi);  }
       
      

  void setColor(int aqi){
     if(0<=aqi && aqi<=50){
        state="Good";
        color=Colors.green;
     }else if(51<=aqi && aqi<=100){
        state="Moderate";
       color=Colors.yellow;
     }else if(101<=aqi && aqi<=150){
       state="Unhealthy for Sensitive Groups";
       color=Colors.orange;
     }else if(151<=aqi && aqi<=200){
      state="Unhealthy";
       color=Colors.red;
     }else if(201<=aqi && aqi<=300){
      state="Very Unhealthy";
       color=Colors.deepPurple;
     }else{
      state="Hazardous";
      color =Colors.red[900];
     }
  }
  // แปลง Object เป็น JSON Map
  Map<String, dynamic> toJson() {
    return {
      'city': city,
      'aqi': aqi,
       'state':state
    };
  }
}
