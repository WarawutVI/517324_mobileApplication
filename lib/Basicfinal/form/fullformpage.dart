import 'package:flutter/material.dart';

class Fullformpage extends StatefulWidget {
  const Fullformpage({super.key});

  @override
  State<Fullformpage> createState() => _FullformpageState();
}

class _FullformpageState extends State<Fullformpage> {
  @override
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  String? _gender = "Female";
  String? _selectedItem;
  bool _isChecked = false;
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Full Form")),
      body: Column(
        children: [
          Form(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                TextFormField(
                  controller: _nameController,
                  decoration: InputDecoration(labelText: "Name"),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your name ';
                    }
                    return null;
                  },
                ),

                TextFormField(
                  controller: _emailController,
                  decoration: InputDecoration(labelText: "Email"),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your email ';
                    }
                    return null;
                  },
                ),
                Text("Gender"),
                Row(
                  children: [
                    Expanded(
                      child: RadioListTile(
                        title: Text("Male"),
                        value: "Male",
                        groupValue: _gender,
                        onChanged: (value) {
                          setState(() {
                            _gender = value.toString();
                          });
                        },
                      ),
                    ),
                    Expanded(
                      child: RadioListTile(
                        title: Text("Female"),
                        value: "Female",
                        groupValue: _gender,
                        onChanged: (value) {
                          setState(() {
                            _gender = value.toString();
                          });
                        },
                      ),
                    ),
                  ],
                ),
                DropdownButtonFormField<String>(
                  decoration: InputDecoration(labelText: "Province"),
                  value: _selectedItem,
                  items: ["Option 1", "Option 2", "Option 3"]
                      .map(
                        (item) =>
                            DropdownMenuItem(value: item, child: Text(item)),
                      )
                      .toList(),
                  onChanged: (value) {
                    _selectedItem = value;
                  },
                  validator: (value) =>
                      value == null ? "Please select an option" : null,
                ),
                CheckboxListTile(
                  value: _isChecked,
                  title: Text("Accept Term & Conditions2"),
                  onChanged: (value) {
                    setState(() {
                      _isChecked = value!;
                    });
                  },
                ),
                 ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    print("User: ${_nameController.text}");
                    print("Email: ${_emailController.text}");
                  }
                },
                child: Text("Save"),
              ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
