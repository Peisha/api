
import 'package:appointment_system/login.dart';
import 'package:appointment_system/register.dart';
import 'package:flutter/material.dart';
void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: const MyLogin(),
    routes: {
      'register': (context) => const MyRegister(),
      'login': (context) => const MyLogin(),
      
    },
  ));
}

