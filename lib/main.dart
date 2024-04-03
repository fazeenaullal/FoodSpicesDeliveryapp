import 'package:flutter/material.dart';
import 'Screens/home_Screen/home_screen.dart';
import 'auth/sign_in.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SignIn(),
      // home: HomeScreen(),
    );
  }
}

