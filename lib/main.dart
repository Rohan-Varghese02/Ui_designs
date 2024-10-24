import 'package:flutter/material.dart';
import 'package:week_6_ui/screens(ui)/q1.dart';
import 'package:week_6_ui/screens(ui)/q2.dart';
import 'package:week_6_ui/screens(ui)/q3.dart';
import 'package:week_6_ui/screens(ui)/q4.dart';
import 'package:week_6_ui/screens(ui)/q5.dart';
import 'package:week_6_ui/screens(ui)/q6.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Ui6(),
    );
  }
}
