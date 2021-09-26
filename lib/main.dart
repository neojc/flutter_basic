import 'package:flutter/material.dart';
import 'package:flutter_basic/Pages/login_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter CTF Flag',
      theme: ThemeData(
          primarySwatch: Colors.blue,
          inputDecorationTheme: InputDecorationTheme(
              fillColor: Color(0xFFECF1F7),
              isCollapsed: true,
              filled: true,
              border: UnderlineInputBorder(
                  borderRadius: BorderRadius.circular(60),
                  borderSide: BorderSide.none))),
      home: LoginPage(),
    );
  }
}
