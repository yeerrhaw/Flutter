import 'package:flutter/material.dart';

class SampleMutableButton extends StatefulWidget {
  const SampleMutableButton({super.key});

  @override
  State<SampleMutableButton> createState() => _SampleMutableButtonState();
}

class _SampleMutableButtonState extends State<SampleMutableButton> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton.icon(
              onPressed: () {},
              icon: const Icon(
                Icons.add,
              ),
              label: const Text(
                'LIKE',
                style: TextStyle(color: Colors.grey),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
