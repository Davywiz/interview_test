import 'package:flutter/material.dart';
import 'package:interview_test/constants/theme_manager.dart';
import 'package:interview_test/screens/splash/splash.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Interview Test',
      theme: getApplicationTheme(),
      home: const SplashScreen(),
    );
  }
}
