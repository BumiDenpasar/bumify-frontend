import 'package:bumify/core/theme/theme.dart';
import 'package:bumify/features/auth/view/pages/signin_page.dart';
import 'package:bumify/features/auth/view/pages/signup_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: Apptheme.darkThemeMode,
      home: const SigninPage(),
    );
  }
}
