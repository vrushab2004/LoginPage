// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:firstap/button.dart';
import 'package:firstap/textfield.dart';
import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  final username = TextEditingController();
  final password = TextEditingController();
  Login({super.key});
  void signuserin() {}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Center(
          child: Column(children: [
            const SizedBox(height: 50),
            Icon(
              Icons.lock,
              size: 100,
            ),
            const SizedBox(height: 50),
            Text(
              'Welcome back you have been missed',
              style: TextStyle(
                  color: Colors.grey[700],
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 70),
            Fields(
              controller: username,
              hinText: 'email',
              obsecureText: false,
            ),
            const SizedBox(height: 40),
            Fields(
              controller: password,
              hinText: 'password',
              obsecureText: true,
            ),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    'Forgot password?',
                    style: TextStyle(color: Colors.grey[600]),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            button(
              onTap: signuserin,
            ),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Row(
                children: [
                  Expanded(
                    child: Divider(
                      thickness: 0.5,
                      color: Colors.grey[400],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    child: Text(
                      'Or continue with',
                      style: TextStyle(color: Colors.grey[400]),
                    ),
                  ),
                  Expanded(
                    child: Divider(
                      thickness: 0.5,
                      color: Colors.grey[400],
                    ),
                  ),
                ],
              ),
            ),
            Row(
              children: [
                Image.asset('lib/images/google.png')
              ],
            )
          ]),
        ),
      ),
    );
  }
}
