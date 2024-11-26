// ignore_for_file: void_checks

import 'package:flutter/material.dart';

class AddPage extends StatefulWidget {
  const AddPage({super.key});

  @override
  State<AddPage> createState() => _AddPageState();
}

class _AddPageState extends State<AddPage> {
  TextEditingController value1Controller = TextEditingController();
  TextEditingController value2Controller = TextEditingController();
  late dynamic output;

  void calculate(String val1, String val2, String type) {
    setState(() {
      int intVal1 = int.tryParse(val1) ?? 0;
      int intVal2 = int.tryParse(val2) ?? 0;
      double dbval1 = double.tryParse(val1) ?? 0;
      double dbval2 = double.tryParse(val2) ?? 0;
      if (type == "add") {
        output = intVal1 + intVal2;
      } else if (type == "subtract") {
        output = intVal1 - intVal2;
      } else if (type == "multiply") {
        output = intVal1 * intVal2;
      } else if (type == "divide") {
        output = dbval1 / dbval2; // Integer division
      } else {
        output = 'Invalid Output';
      }
    });
  }

  var txtstyle = const TextStyle(
    fontWeight: FontWeight.bold,
    letterSpacing: 2,
    fontSize: 18,
  );

  @override
  void initState() {
    output = 0;
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Miguel Andrei Tan',
        ),
      ),
      body: Center(
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              TextField(
                controller: value1Controller,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Enter Value 1',
                  prefix: Icon(Icons.numbers),
                ),
              ),
              const SizedBox(height: 15),
              TextField(
                controller: value2Controller,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Enter Value 2',
                  prefix: Icon(Icons.numbers),
                ),
              ),
              const SizedBox(height: 15),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                  minimumSize: const Size.fromHeight(50),
                ),
                onPressed: () {
                  calculate(
                    value1Controller.text,
                    value2Controller.text,
                    "add",
                  );
                },
                child: const Text('ADD'),
              ),
              const SizedBox(height: 15),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.pink,
                  minimumSize: const Size.fromHeight(50),
                ),
                onPressed: () {
                  calculate(
                    value1Controller.text,
                    value2Controller.text,
                    "subtract",
                  );
                },
                child: const Text('SUBTRACT'),
              ),
              const SizedBox(height: 15),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green,
                  minimumSize: const Size.fromHeight(50),
                ),
                onPressed: () {
                  calculate(
                    value1Controller.text,
                    value2Controller.text,
                    "multiply",
                  );
                },
                child: const Text('MULTIPLY'),
              ),
              const SizedBox(height: 15),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.red,
                  minimumSize: const Size.fromHeight(50),
                ),
                onPressed: () {
                  calculate(
                    value1Controller.text,
                    value2Controller.text,
                    "divide",
                  );
                },
                child: const Text('DIVIDE'),
              ),
              const SizedBox(height: 15),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text('Output: '),
                  Text(
                    '$output',
                    style: txtstyle,
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
