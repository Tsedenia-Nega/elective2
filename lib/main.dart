import 'package:flutter/material.dart';

import 'package:fluttertoast/fluttertoast.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: LoginScreen());
  }
}

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  final String predefinedEmail = "tsedenia@gmail.com";
  final String predefinedPassword = "password123";

  void validateLogin() {
    String email = emailController.text;
    String password = passwordController.text;

    if (email == predefinedEmail && password == predefinedPassword) {
      Fluttertoast.showToast(msg: "Login Successful!");
    } else {
      Fluttertoast.showToast(msg: "Invalid email or password");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Login Form")),
      body: Padding(
        padding: EdgeInsets.all(20.0),
        child: Column(
          children: [
            TextField(
              controller: emailController,
              decoration: InputDecoration(labelText: "Email"),
              keyboardType: TextInputType.emailAddress,
            ),
            TextField(
              controller: passwordController,
              decoration: InputDecoration(labelText: "Password"),
              obscureText: true,
            ),
            SizedBox(height: 20),
            ElevatedButton(onPressed: validateLogin, child: Text("Login")),
          ],
        ),
      ),
    );
  }
}
