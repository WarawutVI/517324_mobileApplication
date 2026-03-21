import 'package:flutter/material.dart';

class Dropdownbutton extends StatefulWidget {
  const Dropdownbutton({super.key});

  @override
  State<Dropdownbutton> createState() => _DropdownbuttonState();
}

class _DropdownbuttonState extends State<Dropdownbutton> {
  @override
  String? _selectedItem;
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("dropdown button")),
      body: Center(
        child: DropdownButtonFormField<String>(
          decoration: InputDecoration(labelText: "Select an option"),
          value: _selectedItem,
          items: ["Option 1", "Option 2", "Option 3"]
              .map((item) => DropdownMenuItem(value: item, child: Text(item)))
              .toList(),
          onChanged: (value) {
            _selectedItem = value;
          },
          validator: (value) =>
              value == null ? "Please select an option" : null,
        ),
      ),
    );
  }
}
