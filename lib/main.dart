import 'package:cv_web/constant/color.dart';
import 'package:cv_web/screens/home_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Cv Web',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        textButtonTheme: TextButtonThemeData(
          style: TextButton.styleFrom(
            foregroundColor: secondaryColor,
            padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 32),
            textStyle: const TextStyle(fontWeight: FontWeight.w300),
          ),
        ),
        useMaterial3: true,
      ),
      home: HomeScreen(),
    );
  }
}
