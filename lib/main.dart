import 'package:flutter/material.dart';
import 'package:flutter_application_newest/Widgets/checkbox.dart';
import 'package:flutter_application_newest/Widgets/datepickerexample.dart';
import 'package:flutter_application_newest/Widgets/timepickerexample.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const TimePickerExample(),
      debugShowCheckedModeBanner: false,
    );
  }
}
