import 'package:flutter/material.dart';
import 'package:prueba/view/splash.dart';
import 'package:prueba/view/task_list.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    const primary = Color(0xFF40B7AD);
    const textColor = Color(0xFF4A4A4A);
    const backgroundColor = Color(0xFFF5F5F5);
    return MaterialApp(
      title: 'Frases de Tía',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: primary),
        scaffoldBackgroundColor: backgroundColor,
        textTheme: Theme.of(context).textTheme.apply(
          fontFamily: 'Montserrat',
          bodyColor: textColor,
          displayColor: textColor,
        )
      ),
      home:SplashView(),
      debugShowCheckedModeBanner: false,
    );
  }
}