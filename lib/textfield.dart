// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class Fields extends StatelessWidget {
  final controller;
  final String hinText;
  final bool obsecureText;
  const Fields({
    super.key,
    required this.controller,
    required this.hinText,
    required this.obsecureText,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 40.0),
      child: TextField(
        controller: controller,
        obscureText: obsecureText,
        decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.white),
              borderRadius: BorderRadius.circular(20)),
          focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.grey.shade300),
              borderRadius: BorderRadius.circular(20)),
          fillColor: Colors.grey.shade200,
          filled: true,
          hintText: hinText,
          hintStyle: TextStyle(color: Colors.grey[500]),
        ),
      ),
    );
  }
}
