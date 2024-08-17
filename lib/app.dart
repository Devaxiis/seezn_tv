import 'package:flutter/material.dart';
import 'package:seezn_tv_app/src/config/theme/theme.dart';
import 'package:seezn_tv_app/src/presentation/ui/splash_screen.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: Apptheme.dark,
      debugShowCheckedModeBanner: false,
      home: const SplashScreen(),
    );
  }
}
