import 'package:flutter/material.dart';
import 'package:flutter_application_newest/NewTask/customfield.dart';
import 'package:flutter_application_newest/NewTask/custombutton.dart';

class FormPage extends StatefulWidget {
  const FormPage({super.key});

  @override
  State<FormPage> createState() => _FormPageState();
}

class _FormPageState extends State<FormPage> {
  final _formkey = GlobalKey<FormState>();
  final txtController = TextEditingController();
  final txtController1 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Form Validation'),
      ),
      body: Form(
        key: _formkey,
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                CustomTextField(
                  controller_: txtController,
                  isPassword_: false,
                  error_: 'The username must not be empty',
                  hintText_: 'Enter your username',
                  labelText_: 'USERNAME',
                ),
                CustomTextField(
                  controller_: txtController1,
                  isPassword_: true,
                  error_: 'The password must not be empty',
                  hintText_: 'Enter your password',
                  labelText_: 'PASSWORD',
                ),
                Custombutton(
                  btnText_: 'LOGIN',
                  onPressed_: () {
                    var input = txtController.text;
                    if (_formkey.currentState!.validate()) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text('You have entered $input'),
                        ),
                      );
                    }
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
