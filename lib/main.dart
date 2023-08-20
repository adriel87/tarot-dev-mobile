import 'package:flutter/material.dart';
import 'package:tarot_dev/config/router/app_router.dart';
import 'package:tarot_dev/config/theme/app_theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: true,
      routerConfig: router,
      theme: AppTheme(selectedColor: 2).getTheme(),
    );
  }
}

