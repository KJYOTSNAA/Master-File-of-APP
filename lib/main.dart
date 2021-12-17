import 'package:flutter/material.dart';
import 'package:login/blank.dart';
import 'package:login/erp_portal.dart';
import 'package:login/home_screen.dart';
import 'package:login/user_profile.dart';
void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}
