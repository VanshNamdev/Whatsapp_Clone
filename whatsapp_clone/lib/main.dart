import 'package:flutter/material.dart';
import 'package:whatsapp_clone/Common/auth/pages/login_page.dart';
import 'package:whatsapp_clone/Common/theme/dark_theme.dart';
import 'package:whatsapp_clone/Common/theme/light_theme.dart';
import 'package:whatsapp_clone/welcome_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: lightTheme(),
      darkTheme: darkTheme(),
      themeMode: ThemeMode.system,
      home: LoginPage(),
    );
  }
}

