import 'package:flutter/material.dart';
import 'package:video/themes/app_theme.dart';
import 'package:video/views/screens/home_screen.dart';
import 'package:video/views/screens/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Video App',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.appTheme,
      home: const SplashScreen(),
    );
  }
}




