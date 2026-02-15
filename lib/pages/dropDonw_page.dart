import 'package:flutter/material.dart';
class DropdonwPage extends StatefulWidget {
  const DropdonwPage({super.key});

  @override
  State<DropdonwPage> createState() => _MyWidgetState();
}
class _MyWidgetState extends State<DropdonwPage> {
  final _formKey = GlobalKey<FormState>();
  String? _selectedItem;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Simple Form')), //AppBar
      body: Form(
        key: _formKey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            DropdownButtonFormField<String>(
              decoration: const InputDecoration(labelText: 'Select an option',border: OutlineInputBorder()),
              value: _selectedItem,
              items: [
                'Option 1', 'Option 2', 'Option 3', 'Option 4']
                  .map((item) => DropdownMenuItem(value: item, child: Text(item)),)
                  .toList(),
              onChanged: (value) {
                _selectedItem = value;
              },
              validator: (value) =>
                  value == null ? 'Please select an option' : null,
            ),
            TextButton(
              onPressed: () {
                if (_formKey.currentState!.validate()) {
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
