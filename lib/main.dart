
import 'package:appointment_system/screen/home/home.dart';
import 'package:appointment_system/screen/login/login.dart';
import 'package:appointment_system/screen/register/register.dart';
import 'package:flutter/material.dart';
void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: const MyLogin(),
    routes: {
      'register': (context) => const MyRegister(),
      'login': (context) => const MyLogin(),
      'home': (context) => const Home(),
      
    },
  ));
}

