import 'package:flutter/material.dart';
import '../screens/loginScreen.dart' as import_rs;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      //theme: ThemeData(primarySwatch: mainColor),
      home: Scaffold(
        backgroundColor: Color(0xFFFFFDFA),
        body: import_rs.LoginScreen(),
      ),
    );
  }
}
