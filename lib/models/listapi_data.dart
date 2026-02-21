import 'package:flutter/material.dart';

class Userlist {
  final int id;
  final String firstname;

  Userlist(this.id, this.firstname);

  Userlist.fromJson(Map<String, dynamic> json)
    : id = json['id'],
      firstname = json["fristname"];

  Map<String, dynamic> toJson() {
    return {"id": id, "fistname": firstname};
  }
}
