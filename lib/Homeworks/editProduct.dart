import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class Editproduct extends StatefulWidget {
  final int id;
  final String initialName;
  final double initialPrice;
  final String initialDescription; // 1. Added description field

  const Editproduct({
    super.key,
    required this.id,
    required this.initialName,
    required this.initialPrice,
    required this.initialDescription,
  });

  @override
  State<Editproduct> createState() => _EditproductState();
}

class _EditproductState extends State<Editproduct> {
  late TextEditingController nameController;
  late TextEditingController priceController;
  late TextEditingController descriptionController; // Fixed typo

  @override
  void initState() {
    super.initState();
    nameController = TextEditingController(text: widget.initialName);
    priceController = TextEditingController(text: widget.initialPrice.toString());
    descriptionController = TextEditingController(text: widget.initialDescription); // 2. Fixed semicolon & text
  }

  // Always dispose controllers to prevent memory leaks
  @override
  void dispose() {
    nameController.dispose();
    priceController.dispose();
    descriptionController.dispose();
    super.dispose();
  }

  Future<void> editData() async {
    try {
      var url = Uri.parse("http://10.0.2.2:8001/products/${widget.id}");
      var response = await http.put(
        url,
        headers: {"Content-Type": "application/json"},
        body: jsonEncode({
          "name": nameController.text,
          "price": double.tryParse(priceController.text) ?? 0.0,
          "description": descriptionController.text, // 3. Included description in body
        }),
      );

      if (response.statusCode == 200) {
        if (mounted) Navigator.pop(context, true); 
      } else {
        print("Update failed: ${response.body}");
      }
    } catch (e) {
      print("Error: $e");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Edit Product")),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView( // Added scroll just in case keyboard covers fields
          child: Column(
            children: [
              TextField(
                controller: nameController,
                decoration: const InputDecoration(labelText: "Product Name"),
              ),
              TextField(
                controller: descriptionController, // 4. Added the text field for description
                decoration: const InputDecoration(labelText: "Description"),
              ),
              TextField(
                controller: priceController,
                decoration: const InputDecoration(labelText: "Price"),
                keyboardType: TextInputType.number,
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: editData, 
                child: const Text("Update Product"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}