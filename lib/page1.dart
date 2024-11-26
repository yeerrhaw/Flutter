import 'package:flutter/material.dart';

class Page1 extends StatefulWidget {
  const Page1({super.key});

  @override
  State<Page1> createState() => _Page1State();
}

class _Page1State extends State<Page1> {
  TextEditingController txtController = TextEditingController();
  late String value = '';

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Stateful Page 1',
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextField(
              controller: txtController,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Enter Value',
              ),
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  value = txtController.text;
                });
              },
              child: const Text('Show'),
            ),
            Text('value: $value'),
          ],
        ),
      ),
    );
  }
}
