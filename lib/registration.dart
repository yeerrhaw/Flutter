import 'package:flutter/material.dart';

class Registration extends StatefulWidget {
  const Registration({super.key});

  @override
  State<Registration> createState() => _RegistrationState();
}

class _RegistrationState extends State<Registration> {
  TextEditingController nameController = TextEditingController();
  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController cpasswordController = TextEditingController();
  TextEditingController genderController = TextEditingController();
  TextEditingController civilstatusController = TextEditingController();
  TextEditingController birthdateController = TextEditingController();
  late String errorMessage;
  late bool isError;

  var txtstyle = const TextStyle(
    fontWeight: FontWeight.bold,
    letterSpacing: 2,
    fontSize: 38,
  );

  var errortxtstyle = const TextStyle(
    fontWeight: FontWeight.bold,
    color: Colors.red,
    letterSpacing: 1,
    fontSize: 18,
  );

  @override
  void initState() {
    errorMessage = "This is an error";
    isError = false;
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  void checkRegister(
      name, username, password, cpassword, gender, civilstatus, birthdate) {
    setState(() {
      if (name == "") {
        errorMessage = "Please input your name!";
        isError = true;
      } else if (username == "") {
        errorMessage = "Please input your username!";
        isError = true;
      } else if (password == "") {
        errorMessage = "Please input your password!";
        isError = true;
      } else if (cpassword == "") {
        errorMessage = "Please input your confirm password!";
        isError = true;
      } else if (password != cpassword) {
        errorMessage = "Both passwords must be the same!";
        isError = true;
      } else if (gender == "") {
        errorMessage = "Please input your gender!";
        isError = true;
      } else if (civilstatus == "") {
        errorMessage = "Please input your civil status!";
        isError = true;
      } else if (birthdate == "") {
        errorMessage = "Please input your birthdate!";
        isError = true;
      } else {
        errorMessage = "Registration Successful!";
        isError = false;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ListView(
          shrinkWrap: true,
          children: [
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 25),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'SIGN IN',
                    style: txtstyle,
                  ),
                  const SizedBox(height: 15),
                  TextField(
                    controller: nameController,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Enter Name',
                      prefixIcon: Icon(Icons.account_box),
                    ),
                  ),
                  const SizedBox(height: 15),
                  TextField(
                    controller: usernameController,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Enter Username',
                      prefixIcon: Icon(Icons.person),
                    ),
                  ),
                  const SizedBox(height: 15),
                  TextField(
                    controller: passwordController,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Enter Password',
                      prefixIcon: Icon(Icons.lock),
                    ),
                  ),
                  const SizedBox(height: 15),
                  TextField(
                    controller: cpasswordController,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Enter Confirm Password',
                      prefixIcon: Icon(Icons.lock),
                    ),
                  ),
                  const SizedBox(height: 15),
                  TextField(
                    controller: genderController,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Enter Gender',
                      prefixIcon: Icon(Icons.male),
                    ),
                  ),
                  const SizedBox(height: 15),
                  TextField(
                    controller: civilstatusController,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Enter Civil Status',
                      prefixIcon: Icon(Icons.social_distance),
                    ),
                  ),
                  const SizedBox(height: 15),
                  TextField(
                    controller: birthdateController,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Enter Birthdate',
                      prefixIcon: Icon(Icons.calendar_month),
                    ),
                  ),
                  const SizedBox(height: 15),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      minimumSize: const Size.fromHeight(50),
                    ),
                    onPressed: () {
                      checkRegister(
                        nameController.text,
                        usernameController.text,
                        passwordController.text,
                        cpasswordController.text,
                        genderController.text,
                        civilstatusController.text,
                        birthdateController.text,
                      );
                    },
                    child: const Text('Register'),
                  ),
                  const SizedBox(height: 15),
                  isError
                      ? Text(
                          errorMessage,
                          style: errortxtstyle,
                        )
                      : Container(),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
