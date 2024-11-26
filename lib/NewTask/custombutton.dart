import 'package:flutter/material.dart';

class Custombutton extends StatelessWidget {
  final String btnText_;
  final Function() onPressed_;
  
  const Custombutton({
    super.key,
    required this.btnText_,
    required this.onPressed_,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(
        vertical: 5,
        horizontal: 5,
      ),
      child: ElevatedButton.icon(
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.blue,
          minimumSize: const Size.fromHeight(50),
        ),
        onPressed: onPressed_,
        icon: const Icon(Icons.arrow_forward),
        label: Text(btnText_),
      ),
    );
  }
}
