import 'package:flutter/material.dart';

List<String> options = <String>['One', 'Two', 'Three', 'Four'];

class DropdownExample extends StatefulWidget {
  const DropdownExample({super.key});

  @override
  State<DropdownExample> createState() => _DropdownExampleState();
}

class _DropdownExampleState extends State<DropdownExample> {
  String DropdownValue = options.first;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            DropdownMenu<String>(
              label: const Text('Select Options'),
              width: 300,
              initialSelection: options.first,
              onSelected: (String? value) {
                setState(() {
                  DropdownValue = value!;
                });
              },
              dropdownMenuEntries:
                  options.map<DropdownMenuEntry<String>>((String value_) {
                return DropdownMenuEntry<String>(value: value_, label: value_);
              }).toList(),
            ),
          ],
        ),
      ),
    );
  }
}
