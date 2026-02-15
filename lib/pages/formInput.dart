import 'package:flutter/material.dart';

class Forminput extends StatefulWidget {
  const Forminput({super.key});

  @override
  State<Forminput> createState() => _ForminputState();
}

class _ForminputState extends State<Forminput> {
  @override
  String? _gender = "Female";
  String? _selectedItem;
  bool _isChecked = false;
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Register Form')), //AppBar
      body: Form(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextFormField(
              decoration: const InputDecoration(labelText: 'Full Name'),
            ),
            SizedBox(height: 20),
            TextFormField(
              decoration: const InputDecoration(labelText: 'Email'),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: RadioListTile(
                    title: const Text("Male"),
                    value: "Male",
                    groupValue: _gender, //เช็คว่าตัวเลือกตรงกับค่าไหน
                    onChanged: (value) {
                      setState(() {
                        _gender = value.toString();
                      });
                    },
                  ),
                ),
                Expanded(
                  child: RadioListTile(
                    title: const Text("Female"),
                    value: "Female",
                    groupValue: _gender, //เช็คว่าตัวเลือกตรงกับค่าไหน
                    onChanged: (value) {
                      setState(() {
                        _gender = value.toString();
                      });
                    },
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            DropdownButtonFormField<String>(
              decoration: const InputDecoration(
                labelText: 'Select an option',
                border: OutlineInputBorder(),
              ),
              value: _selectedItem,
              items: ['Option 1', 'Option 2', 'Option 3', 'Option 4']
                  .map(
                    (item) => DropdownMenuItem(value: item, child: Text(item)),
                  )
                  .toList(),
              onChanged: (value) {
                _selectedItem = value;
              },
              validator: (value) =>
                  value == null ? 'Please select an option' : null,
            ),
            SizedBox(height: 20),
            CheckboxListTile(
              title:Text("Acccept Terms and Conditions"),
              value: _isChecked,
              onChanged: (bool? value) {
                setState(() {
                  _isChecked = value!;
                });
              },
            ),

            TextButton(
              onPressed: () {
                if (Form.of(context)!.validate()) {
                  // Process data.
                }
              },
              child: const Text('Save'),
            ),
          ],
        ),
      ), //Column
    );
  }
}
