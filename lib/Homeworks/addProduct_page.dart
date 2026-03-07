import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:my_app/Homeworks/Product_page.dart';
import 'package:my_app/models/product_data.dart';
import 'dart:convert';

class AddproductPage extends StatefulWidget {
  final int? many;
  const AddproductPage({super.key, required this.many});

  @override
  State<AddproductPage> createState() => _AddproductPageState();
}

class _AddproductPageState extends State<AddproductPage> {
  final GlobalKey<FormState> _formkey = GlobalKey<FormState>();
  final TextEditingController name = TextEditingController();
  final TextEditingController description = TextEditingController();
  final TextEditingController price = TextEditingController();

  void postdata() async {
    double myPrice = double.tryParse(price.text) ?? 0;
    Product product = Product(
      widget.many ?? 0,
      name.text,
      description.text,
      myPrice,
    );
    try {
      var res = await http.post(
        Uri.parse("http://10.0.2.2:8001/products"),
        headers: {
          "Content-Type": "application/json", // Tell the server it's JSON
        },
        body: jsonEncode({
          "id": product.id,
          "name": product.name,
          "description": product.description,
          "price": product.price,
        }),
      );
      print(res.statusCode);
      if (res.statusCode == 201) {
        print("complete add");
        if (mounted) {
           Navigator.pop(context, true);
        }
      }

     
    } catch (e) {
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: _formkey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextFormField(
              controller: name,
              decoration: InputDecoration(labelText: "Name"),
              validator: (value) {
                if (value == null) {
                  return "Please enter product name";
                }
              },
            ),
            TextFormField(
              controller: description,
              decoration: InputDecoration(labelText: "description"),
              validator: (value) {
                if (value == null) {
                  return "Please enter product description";
                }
              },
            ),
            TextFormField(
              controller: price,
              decoration: InputDecoration(labelText: "price"),
              validator: (value) {
                if (value == null) {
                  return "Please enter product price";
                }
              },
            ),
            ElevatedButton(onPressed: (){
              if (_formkey.currentState!.validate()) {
      postdata();
    }
            }, child: Text("sunmit")),
          ],
        ),
      ),
    );
  }
}
