import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:whatsapp_clone/Common/auth/pages/user_info_page.dart';
import 'package:whatsapp_clone/Common/routes/routes.dart';
import 'package:whatsapp_clone/Common/theme/dark_theme.dart';
import 'package:whatsapp_clone/Common/theme/light_theme.dart';
import 'package:whatsapp_clone/firebase_options.dart';
import 'package:whatsapp_clone/welcome_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  print("Firebase Initialized");
  runApp(
    const ProviderScope(
      child: MyApp(),
    ),
  );
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
      home: UserInfoPage(),
      onGenerateRoute: Routes.onGenerateRoute,
    );
  }
}
