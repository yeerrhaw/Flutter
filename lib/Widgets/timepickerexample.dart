import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class TimePickerExample extends StatefulWidget {
  const TimePickerExample({super.key});

  @override
  State<TimePickerExample> createState() => _TimePickerExampleState();
}

class _TimePickerExampleState extends State<TimePickerExample> {
  final TextEditingController _timecontroller = TextEditingController();

  Future<void> _selectTime(BuildContext context) async {
    TimeOfDay? pickedTime =
        await showTimePicker(context: context, initialTime: TimeOfDay.now());

    if (pickedTime != null) {
      final now = DateTime.now();
      final DateTime selectedTime = DateTime(
        now.year,
        now.month,
        now.day,
        pickedTime.hour,
        pickedTime.minute,
      );
      String formattedTime = DateFormat('hh-mm-aa').format(selectedTime);
      setState(() {
        _timecontroller.text = formattedTime;
      });
    }
  }

  @override
  void dispose() {
    _timecontroller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('TimePicker TextField Example'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: _timecontroller,
              readOnly: true,
              onTap: () {
                _selectTime(context);
              },
            )
          ],
        ),
      ),
    );
  }
}
