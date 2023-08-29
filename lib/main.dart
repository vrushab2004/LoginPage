import 'package:firstap/login.dart';
import 'package:flutter/material.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // int days=30;
    // String name='ingnix';
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Login(),
    );
  }
}
